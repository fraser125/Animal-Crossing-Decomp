lbl_80632F70:
/* 80632F70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80632F74  7C 08 02 A6 */	mflr r0
/* 80632F78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80632F7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80632F80  4B A6 7F 49 */	bl func_8009AEC8
/* 80632F84  7C BD 2B 78 */	mr r29, r5
/* 80632F88  A8 03 00 02 */	lha r0, 2(r3)
/* 80632F8C  80 A5 00 A0 */	lwz r5, 0xa0(r5)
/* 80632F90  3B E3 01 34 */	addi r31, r3, 0x134
/* 80632F94  2C 00 00 01 */	cmpwi r0, 1
/* 80632F98  54 A0 07 FE */	clrlwi r0, r5, 0x1f
/* 80632F9C  1C 80 03 00 */	mulli r4, r0, 0x300
/* 80632FA0  3B C4 02 10 */	addi r30, r4, 0x210
/* 80632FA4  7F C3 F2 14 */	add r30, r3, r30
/* 80632FA8  40 82 00 10 */	bne lbl_80632FB8
/* 80632FAC  A8 03 08 10 */	lha r0, 0x810(r3)
/* 80632FB0  7C 1B 0E 70 */	srawi r27, r0, 1
/* 80632FB4  48 00 00 24 */	b lbl_80632FD8
lbl_80632FB8:
/* 80632FB8  38 60 00 06 */	li r3, 6
/* 80632FBC  7C 05 1B D6 */	divw r0, r5, r3
/* 80632FC0  7C 00 19 D6 */	mullw r0, r0, r3
/* 80632FC4  7C 60 28 51 */	subf. r3, r0, r5
/* 80632FC8  7C 03 00 D0 */	neg r0, r3
/* 80632FCC  41 80 00 08 */	blt lbl_80632FD4
/* 80632FD0  7C 60 1B 78 */	mr r0, r3
lbl_80632FD4:
/* 80632FD4  7C 1B 0E 70 */	srawi r27, r0, 1
lbl_80632FD8:
/* 80632FD8  83 5D 00 00 */	lwz r26, 0(r29)
/* 80632FDC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80632FE0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80632FE4  83 9A 02 D0 */	lwz r28, 0x2d0(r26)
/* 80632FE8  38 7C 00 08 */	addi r3, r28, 8
/* 80632FEC  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 80632FF0  90 1C 00 00 */	stw r0, 0(r28)
/* 80632FF4  80 7D 00 00 */	lwz r3, 0(r29)
/* 80632FF8  4B DD A3 DD */	bl _Matrix_to_Mtx_new
/* 80632FFC  90 7C 00 04 */	stw r3, 4(r28)
/* 80633000  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 80633004  3C 60 80 6D */	lis r3, aNogFan_nog_fan01_anim@ha /* 0x806D76DC@ha */
/* 80633008  57 60 10 3A */	slwi r0, r27, 2
/* 8063300C  81 5A 02 D0 */	lwz r10, 0x2d0(r26)
/* 80633010  39 04 00 20 */	addi r8, r4, 0x0020 /* 0xDB060020@l */
/* 80633014  39 23 76 DC */	addi r9, r3, aNogFan_nog_fan01_anim@l /* 0x806D76DC@l */
/* 80633018  7F A3 EB 78 */	mr r3, r29
/* 8063301C  38 AA 00 08 */	addi r5, r10, 8
/* 80633020  7F E4 FB 78 */	mr r4, r31
/* 80633024  90 BA 02 D0 */	stw r5, 0x2d0(r26)
/* 80633028  7F C5 F3 78 */	mr r5, r30
/* 8063302C  38 C0 00 00 */	li r6, 0
/* 80633030  38 E0 00 00 */	li r7, 0
/* 80633034  91 0A 00 00 */	stw r8, 0(r10)
/* 80633038  39 00 00 00 */	li r8, 0
/* 8063303C  7C 09 00 2E */	lwzx r0, r9, r0
/* 80633040  90 0A 00 04 */	stw r0, 4(r10)
/* 80633044  4B D3 E6 F5 */	bl cKF_Si3_draw_R_SV
/* 80633048  39 61 00 20 */	addi r11, r1, 0x20
/* 8063304C  4B A6 7E C9 */	bl func_8009AF14
/* 80633050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80633054  7C 08 03 A6 */	mtlr r0
/* 80633058  38 21 00 20 */	addi r1, r1, 0x20
/* 8063305C  4E 80 00 20 */	blr 
