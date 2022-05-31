lbl_805A2B6C:
/* 805A2B6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A2B70  7C 08 02 A6 */	mflr r0
/* 805A2B74  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A2B78  39 61 00 30 */	addi r11, r1, 0x30
/* 805A2B7C  4B AF 83 45 */	bl func_8009AEC0
/* 805A2B80  7C 9B 23 78 */	mr r27, r4
/* 805A2B84  3C A0 80 6C */	lis r5, data_806C36D8@ha /* 0x806C36D8@ha */
/* 805A2B88  A8 84 00 DE */	lha r4, 0xde(r4)
/* 805A2B8C  7C 7A 1B 78 */	mr r26, r3
/* 805A2B90  AB 3B 00 DC */	lha r25, 0xdc(r27)
/* 805A2B94  3B C5 36 D8 */	addi r30, r5, data_806C36D8@l /* 0x806C36D8@l */
/* 805A2B98  3C 64 00 01 */	addis r3, r4, 1
/* 805A2B9C  C0 3B 02 1C */	lfs f1, 0x21c(r27)
/* 805A2BA0  38 03 80 00 */	addi r0, r3, -32768
/* 805A2BA4  7C 18 07 34 */	extsh r24, r0
/* 805A2BA8  4B AF 81 FD */	bl func_8009ADA4
/* 805A2BAC  A0 1B 02 40 */	lhz r0, 0x240(r27)
/* 805A2BB0  7C 7F 1B 78 */	mr r31, r3
/* 805A2BB4  54 64 08 3C */	slwi r4, r3, 1
/* 805A2BB8  38 7E 03 70 */	addi r3, r30, 0x370
/* 805A2BBC  7F A3 20 AE */	lbzx r29, r3, r4
/* 805A2BC0  7C 63 22 14 */	add r3, r3, r4
/* 805A2BC4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 805A2BC8  8B 83 00 01 */	lbz r28, 1(r3)
/* 805A2BCC  41 82 00 20 */	beq lbl_805A2BEC
/* 805A2BD0  80 7B 02 18 */	lwz r3, 0x218(r27)
/* 805A2BD4  38 03 FF F6 */	addi r0, r3, -10
/* 805A2BD8  1C 00 00 06 */	mulli r0, r0, 6
/* 805A2BDC  2C 00 00 00 */	cmpwi r0, 0
/* 805A2BE0  41 81 00 08 */	bgt lbl_805A2BE8
/* 805A2BE4  38 00 00 00 */	li r0, 0
lbl_805A2BE8:
/* 805A2BE8  90 1B 02 44 */	stw r0, 0x244(r27)
lbl_805A2BEC:
/* 805A2BEC  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 805A2BF0  38 60 00 00 */	li r3, 0
/* 805A2BF4  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 805A2BF8  C0 7B 00 30 */	lfs f3, 0x30(r27)
/* 805A2BFC  4B E6 97 05 */	bl Matrix_translate
/* 805A2C00  7F 23 CB 78 */	mr r3, r25
/* 805A2C04  38 80 00 01 */	li r4, 1
/* 805A2C08  4B E6 98 B1 */	bl Matrix_RotateX
/* 805A2C0C  7F 03 C3 78 */	mr r3, r24
/* 805A2C10  38 80 00 01 */	li r4, 1
/* 805A2C14  4B E6 9A 49 */	bl Matrix_RotateY
/* 805A2C18  3C 60 80 65 */	lis r3, lit_784@ha /* 0x8064A3BC@ha */
/* 805A2C1C  C0 1B 00 5C */	lfs f0, 0x5c(r27)
/* 805A2C20  C0 23 A3 BC */	lfs f1, lit_784@l(r3)  /* 0x8064A3BC@l */
/* 805A2C24  38 60 00 01 */	li r3, 1
/* 805A2C28  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 805A2C2C  EC 21 00 32 */	fmuls f1, f1, f0
/* 805A2C30  C0 7B 00 64 */	lfs f3, 0x64(r27)
/* 805A2C34  4B E6 97 B9 */	bl Matrix_scale
/* 805A2C38  83 3A 02 E0 */	lwz r25, 0x2e0(r26)
/* 805A2C3C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805A2C40  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805A2C44  7F 43 D3 78 */	mr r3, r26
/* 805A2C48  38 99 00 08 */	addi r4, r25, 8
/* 805A2C4C  90 9A 02 E0 */	stw r4, 0x2e0(r26)
/* 805A2C50  90 19 00 00 */	stw r0, 0(r25)
/* 805A2C54  4B E6 A7 81 */	bl _Matrix_to_Mtx_new
/* 805A2C58  90 79 00 04 */	stw r3, 4(r25)
/* 805A2C5C  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805A2C60  3C 60 80 89 */	lis r3, act_gyoei02_00_modelT@ha /* 0x8088B4E0@ha */
/* 805A2C64  57 A8 10 3A */	slwi r8, r29, 2
/* 805A2C68  81 7A 02 E0 */	lwz r11, 0x2e0(r26)
/* 805A2C6C  39 44 00 20 */	addi r10, r4, 0x0020 /* 0xDB060020@l */
/* 805A2C70  39 3E 03 60 */	addi r9, r30, 0x360
/* 805A2C74  38 E4 00 24 */	addi r7, r4, 0x24
/* 805A2C78  38 0B 00 08 */	addi r0, r11, 8
/* 805A2C7C  57 86 10 3A */	slwi r6, r28, 2
/* 805A2C80  90 1A 02 E0 */	stw r0, 0x2e0(r26)
/* 805A2C84  38 BE 03 98 */	addi r5, r30, 0x398
/* 805A2C88  3C 80 DE 00 */	lis r4, 0xde00
/* 805A2C8C  38 03 B4 E0 */	addi r0, r3, act_gyoei02_00_modelT@l /* 0x8088B4E0@l */
/* 805A2C90  91 4B 00 00 */	stw r10, 0(r11)
/* 805A2C94  7C 69 40 2E */	lwzx r3, r9, r8
/* 805A2C98  90 6B 00 04 */	stw r3, 4(r11)
/* 805A2C9C  81 1A 02 E0 */	lwz r8, 0x2e0(r26)
/* 805A2CA0  38 68 00 08 */	addi r3, r8, 8
/* 805A2CA4  90 7A 02 E0 */	stw r3, 0x2e0(r26)
/* 805A2CA8  90 E8 00 00 */	stw r7, 0(r8)
/* 805A2CAC  7C 69 30 2E */	lwzx r3, r9, r6
/* 805A2CB0  90 68 00 04 */	stw r3, 4(r8)
/* 805A2CB4  80 DA 02 E0 */	lwz r6, 0x2e0(r26)
/* 805A2CB8  38 66 00 08 */	addi r3, r6, 8
/* 805A2CBC  90 7A 02 E0 */	stw r3, 0x2e0(r26)
/* 805A2CC0  7C 65 F8 AE */	lbzx r3, r5, r31
/* 805A2CC4  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 805A2CC8  90 66 00 00 */	stw r3, 0(r6)
/* 805A2CCC  80 7B 02 44 */	lwz r3, 0x244(r27)
/* 805A2CD0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805A2CD4  90 66 00 04 */	stw r3, 4(r6)
/* 805A2CD8  80 BA 02 E0 */	lwz r5, 0x2e0(r26)
/* 805A2CDC  38 65 00 08 */	addi r3, r5, 8
/* 805A2CE0  90 7A 02 E0 */	stw r3, 0x2e0(r26)
/* 805A2CE4  90 85 00 00 */	stw r4, 0(r5)
/* 805A2CE8  90 05 00 04 */	stw r0, 4(r5)
/* 805A2CEC  39 61 00 30 */	addi r11, r1, 0x30
/* 805A2CF0  4B AF 82 1D */	bl func_8009AF0C
/* 805A2CF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A2CF8  7C 08 03 A6 */	mtlr r0
/* 805A2CFC  38 21 00 30 */	addi r1, r1, 0x30
/* 805A2D00  4E 80 00 20 */	blr 
