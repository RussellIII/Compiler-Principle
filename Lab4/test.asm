.text
jal main

fibo:
addi $t1, $0, 4#ջ����������
add $sp, $sp,$t1#ջ����
sw $ra,($sp)#���ص�ַ��ջ
add $sp, $sp,$t1#ջ����
addi $t2, $0, 16#������offset
sw $t2,($sp)#���ص�ַ��ջ
add $sp, $sp,$t1#ջ����
sw $fp, ($sp)#���ú�����ַ����
move $fp, $sp#$fp�ƶ�
add $sp, $sp,$t2#$sp����
lw $t1, -12($fp)#ȡ�β�
move $t3, $t1
sw $t3, 12($fp)#�����Ӧλ��
lw $t1, 12($fp)
addi $t2, $0,1
add $t3, $t1,$t2
sw $t3, 12($fp)
lw $v0, 12($fp)#�淵��ֵ
move $sp, $fp #$sp���˵�$fp
lw $t2, -8($fp)#ȡ���ص�ַ
move $ra, $t2#����$ra
lw $t1, ($fp)#��ȡ���ú�����ջ��
move $fp, $t1#�ص�ջ��
lw $t1, -4($fp)
move $sp, $t1
jr $ra
label1:

print:
addi $t1, $0, 4#ջ����������
add $sp, $sp,$t1#ջ����
sw $ra,($sp)#���ص�ַ��ջ
add $sp, $sp,$t1#ջ����
addi $t2, $0, 20#������offset
sw $t2,($sp)#���ص�ַ��ջ
add $sp, $sp,$t1#ջ����
sw $fp, ($sp)#���ú�����ַ����
move $fp, $sp#$fp�ƶ�
add $sp, $sp,$t2#$sp����
lw $t1, -12($fp)#ȡ�β�
move $t3, $t1
sw $t3, 12($fp)#�����Ӧλ��
lw $t3, 12($fp)
move $a0, $t3
addi $v0, $0,1
syscall
addi $t3,$0,0
sw $t3, 16($fp)
lw $v0, 16($fp)#�淵��ֵ
move $sp, $fp #$sp���˵�$fp
lw $t2, -8($fp)#ȡ���ص�ַ
move $ra, $t2#����$ra
lw $t1, ($fp)#��ȡ���ú�����ջ��
move $fp, $t1#�ص�ջ��
lw $t1, -4($fp)
move $sp, $t1
jr $ra
label3:

main:
addi $t2, $0, 4#ջ�������߶�
addi $t1, $0, 44#�������峤��
add $sp, $fp,$t1#$sp��ʼ��λ��
sw $sp, ($fp)#��$sp����ȷλ��
add $fp, $fp, $t2#$fpָ��ջ��
addi $t3,$0,2
sw $t3, 24($fp)
addi $t1, $0, 4#ջ�������߶�
add $sp, $sp,$t1#��ջ��
lw $t1, 24($fp)#ȡ����
sw $t1, ($sp)#ѹջ
jal fibo #ת�������ú���
sw $v0, 28($fp) #����ֵ����
lw $t1, 28($fp)
move $t3, $t1
sw $t3, 20($fp)
addi $t1, $0, 4#ջ�������߶�
add $sp, $sp,$t1#��ջ��
lw $t1, 20($fp)#ȡ����
sw $t1, ($sp)#ѹջ
jal print #ת�������ú���
sw $v0, 32($fp) #����ֵ����
addi $t3,$0,1
sw $t3, 36($fp)
label4:
addi $v0,$0,10
syscall

