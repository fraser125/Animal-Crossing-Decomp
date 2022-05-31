lbl_803C8118:
/* 803C8118  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C811C  7C 08 02 A6 */	mflr r0
/* 803C8120  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C8124  39 61 00 30 */	addi r11, r1, 0x30
/* 803C8128  4B CD 2D AD */	bl func_8009AED4
/* 803C812C  7C 7D 1B 78 */	mr r29, r3
/* 803C8130  7C 9E 23 78 */	mr r30, r4
/* 803C8134  3B E0 00 00 */	li r31, 0
/* 803C8138  38 A0 00 7F */	li r5, 0x7f
/* 803C813C  48 03 E6 FD */	bl lbRTC_IsEqualTime
/* 803C8140  2C 03 00 01 */	cmpwi r3, 1
/* 803C8144  41 82 00 54 */	beq lbl_803C8198
/* 803C8148  7F A4 EB 78 */	mr r4, r29
/* 803C814C  38 61 00 10 */	addi r3, r1, 0x10
/* 803C8150  4B FF FF 6D */	bl mMsr_Set15Minites
/* 803C8154  7F C4 F3 78 */	mr r4, r30
/* 803C8158  38 61 00 08 */	addi r3, r1, 8
/* 803C815C  4B FF FF 61 */	bl mMsr_Set15Minites
/* 803C8160  38 61 00 08 */	addi r3, r1, 8
/* 803C8164  38 81 00 10 */	addi r4, r1, 0x10
/* 803C8168  48 03 E7 AD */	bl lbRTC_IsOverTime
/* 803C816C  2C 03 00 01 */	cmpwi r3, 1
/* 803C8170  40 82 00 14 */	bne lbl_803C8184
/* 803C8174  38 61 00 10 */	addi r3, r1, 0x10
/* 803C8178  38 81 00 08 */	addi r4, r1, 8
/* 803C817C  48 03 E9 01 */	bl lbRTC_IntervalTime
/* 803C8180  48 00 00 10 */	b lbl_803C8190
lbl_803C8184:
/* 803C8184  38 61 00 08 */	addi r3, r1, 8
/* 803C8188  38 81 00 10 */	addi r4, r1, 0x10
/* 803C818C  48 03 E8 F1 */	bl lbRTC_IntervalTime
lbl_803C8190:
/* 803C8190  38 00 00 0F */	li r0, 0xf
/* 803C8194  7F E3 03 96 */	divwu r31, r3, r0
lbl_803C8198:
/* 803C8198  7F E3 FB 78 */	mr r3, r31
/* 803C819C  39 61 00 30 */	addi r11, r1, 0x30
/* 803C81A0  4B CD 2D 81 */	bl func_8009AF20
/* 803C81A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C81A8  7C 08 03 A6 */	mtlr r0
/* 803C81AC  38 21 00 30 */	addi r1, r1, 0x30
/* 803C81B0  4E 80 00 20 */	blr 
