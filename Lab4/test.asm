.text
jal main

write:
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
add $t1, $fp,$t1
move $sp, $t1
jr $ra


fibo:
addi $t1, $0, 4#ջ����������
add $sp, $sp,$t1#ջ����
sw $ra,($sp)#���ص�ַ��ջ
add $sp, $sp,$t1#ջ����
addi $t2, $0, 64#������offset
sw $t2,($sp)#���ص�ַ��ջ
add $sp, $sp,$t1#ջ����
sw $fp, ($sp)#���ú�����ַ����
move $fp, $sp#$fp�ƶ�
add $sp, $sp,$t2#$sp����
lw $t1, -12($fp)#ȡ�β�
move $t3, $t1
sw $t3, 12($fp)#�����Ӧλ��
addi $t3,$0,1
sw $t3, 24($fp)
lw $t1, 12($fp)
lw $t2, 24($fp)
beq $t1,$t2, label3
j label6
label6:
addi $t3,$0,2
sw $t3, 28($fp)
lw $t1, 12($fp)
lw $t2, 28($fp)
beq $t1,$t2, label3
j label4
label3:
addi $t3,$0,1
sw $t3, 32($fp)
lw $v0, 32($fp)#�淵��ֵ
move $sp, $fp #$sp���˵�$fp
lw $t2, -8($fp)#ȡ���ص�ַ
move $ra, $t2#����$ra
lw $t1, ($fp)#��ȡ���ú�����ջ��
move $fp, $t1#�ص�ջ��
lw $t1, -4($fp)
add $t1, $fp,$t1
move $sp, $t1
jr $ra
j label5
label4:
addi $t3,$0,1
sw $t3, 36($fp)
lw $t1, 12($fp)
lw $t2, 36($fp)
sub $t3, $t1,$t2
sw $t3, 40($fp)
addi $t1, $0, 4#ջ�������߶�
add $sp, $sp,$t1#��ջ��
lw $t1, 40($fp)#ȡ����
sw $t1, ($sp)#ѹջ
jal fibo #ת�������ú���
sw $v0, 44($fp) #����ֵ����
addi $t3,$0,2
sw $t3, 48($fp)
lw $t1, 12($fp)
lw $t2, 48($fp)
sub $t3, $t1,$t2
sw $t3, 52($fp)
addi $t1, $0, 4#ջ�������߶�
add $sp, $sp,$t1#��ջ��
lw $t1, 52($fp)#ȡ����
sw $t1, ($sp)#ѹջ
jal fibo #ת�������ú���
sw $v0, 56($fp) #����ֵ����
lw $t1, 44($fp)
lw $t2, 56($fp)
add $t3, $t2,$t1
sw $t3, 60($fp)
lw $t1, 60($fp)
move $t3, $t1
sw $t3, 16($fp)
lw $v0, 16($fp)#�淵��ֵ
move $sp, $fp #$sp���˵�$fp
lw $t2, -8($fp)#ȡ���ص�ַ
move $ra, $t2#����$ra
lw $t1, ($fp)#��ȡ���ú�����ջ��
move $fp, $t1#�ص�ջ��
lw $t1, -4($fp)
add $t1, $fp,$t1
move $sp, $t1
jr $ra
label5:
lw $v0, 12($fp)#�淵��ֵ
move $sp, $fp #$sp���˵�$fp
lw $t2, -8($fp)#ȡ���ص�ַ
move $ra, $t2#����$ra
lw $t1, ($fp)#��ȡ���ú�����ջ��
move $fp, $t1#�ص�ջ��
lw $t1, -4($fp)
add $t1, $fp,$t1
move $sp, $t1
jr $ra
label1:

main:
addi $t2, $0, 4#ջ�������߶�
addi $t1, $0, 52#�������峤��
add $sp, $fp,$t1#$sp��ʼ��λ��
sw $sp, ($fp)#��$sp����ȷλ��
add $fp, $fp, $t2#$fpָ��ջ��
addi $t3,$0,1
sw $t3, 24($fp)
lw $t1, 24($fp)
move $t3, $t1
sw $t3, 20($fp)
label12:
addi $t3,$0,8
sw $t3, 28($fp)
lw $t1, 20($fp)
lw $t2, 28($fp)
blt $t1,$t2, label10
j label9
label10:
addi $t1, $0, 4#ջ�������߶�
add $sp, $sp,$t1#��ջ��
lw $t1, 20($fp)#ȡ����
sw $t1, ($sp)#ѹջ
jal fibo #ת�������ú���
sw $v0, 0($fp) #����ֵ����
lw $t1, 0($fp)
move $t3, $t1
sw $t3, 12($fp)
addi $t1, $0, 4#ջ�������߶�
add $sp, $sp,$t1#��ջ��
lw $t1, 12($fp)#ȡ����
sw $t1, ($sp)#ѹջ
jal write #ת�������ú���
sw $v0, 4($fp) #����ֵ����
label11:
lw $t1, 20($fp)
addi $t2, $0,1
add $t3, $t1,$t2
sw $t3, 20($fp)
lw $t1, 20($fp)
move $t3, $t1
sw $t3, 32($fp)
j label12
label9:
addi $t3,$0,1
sw $t3, 44($fp)
label8:
addi $v0,$0,10
syscall

