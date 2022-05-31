lbl_80424FAC:
/* 80424FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80424FB0  7C 08 02 A6 */	mflr r0
/* 80424FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80424FBC  7C 9F 23 78 */	mr r31, r4
/* 80424FC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80424FC4  7C 7E 1B 78 */	mr r30, r3
/* 80424FC8  38 7E 03 B0 */	addi r3, r30, 0x3b0
/* 80424FCC  48 00 04 75 */	bl aGRBL_move
/* 80424FD0  80 1E 03 A8 */	lwz r0, 0x3a8(r30)
/* 80424FD4  2C 00 00 00 */	cmpwi r0, 0
/* 80424FD8  41 82 00 3C */	beq lbl_80425014
/* 80424FDC  A8 1E 03 AC */	lha r0, 0x3ac(r30)
/* 80424FE0  3C 60 80 68 */	lis r3, aGaragara_init_proc_table@ha /* 0x80682B24@ha */
/* 80424FE4  38 A3 2B 24 */	addi r5, r3, aGaragara_init_proc_table@l /* 0x80682B24@l */
/* 80424FE8  7F C3 F3 78 */	mr r3, r30
/* 80424FEC  54 00 10 3A */	slwi r0, r0, 2
/* 80424FF0  7F E4 FB 78 */	mr r4, r31
/* 80424FF4  7D 85 00 2E */	lwzx r12, r5, r0
/* 80424FF8  7D 89 03 A6 */	mtctr r12
/* 80424FFC  4E 80 04 21 */	bctrl 
/* 80425000  A8 7E 03 AC */	lha r3, 0x3ac(r30)
/* 80425004  38 00 00 00 */	li r0, 0
/* 80425008  B0 7E 01 78 */	sth r3, 0x178(r30)
/* 8042500C  90 1E 03 A8 */	stw r0, 0x3a8(r30)
/* 80425010  90 1E 01 80 */	stw r0, 0x180(r30)
lbl_80425014:
/* 80425014  A8 9E 01 78 */	lha r4, 0x178(r30)
/* 80425018  7C 80 07 35 */	extsh. r0, r4
/* 8042501C  41 80 00 3C */	blt lbl_80425058
/* 80425020  2C 04 00 02 */	cmpwi r4, 2
/* 80425024  40 80 00 34 */	bge lbl_80425058
/* 80425028  3C 60 80 68 */	lis r3, aGaragara_move_proc_table@ha /* 0x80682B2C@ha */
/* 8042502C  54 80 10 3A */	slwi r0, r4, 2
/* 80425030  38 83 2B 2C */	addi r4, r3, aGaragara_move_proc_table@l /* 0x80682B2C@l */
/* 80425034  7F C3 F3 78 */	mr r3, r30
/* 80425038  7D 84 00 2E */	lwzx r12, r4, r0
/* 8042503C  7F E4 FB 78 */	mr r4, r31
/* 80425040  7D 89 03 A6 */	mtctr r12
/* 80425044  4E 80 04 21 */	bctrl 
/* 80425048  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 8042504C  38 03 00 01 */	addi r0, r3, 1
/* 80425050  90 1E 01 80 */	stw r0, 0x180(r30)
/* 80425054  48 00 00 0C */	b lbl_80425060
lbl_80425058:
/* 80425058  38 00 00 00 */	li r0, 0
/* 8042505C  B0 1E 01 78 */	sth r0, 0x178(r30)
lbl_80425060:
/* 80425060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80425064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80425068  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042506C  7C 08 03 A6 */	mtlr r0
/* 80425070  38 21 00 10 */	addi r1, r1, 0x10
/* 80425074  4E 80 00 20 */	blr 
