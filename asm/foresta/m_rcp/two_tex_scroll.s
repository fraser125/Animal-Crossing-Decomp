lbl_803E54D0:
/* 803E54D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E54D4  7C 08 02 A6 */	mflr r0
/* 803E54D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E54DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803E54E0  4B CB 59 ED */	bl func_8009AECC
/* 803E54E4  81 63 02 D4 */	lwz r11, 0x2d4(r3)
/* 803E54E8  83 A1 00 28 */	lwz r29, 0x28(r1)
/* 803E54EC  35 8B FF D8 */	addic. r12, r11, -40
/* 803E54F0  83 C1 00 2C */	lwz r30, 0x2c(r1)
/* 803E54F4  83 E1 00 30 */	lwz r31, 0x30(r1)
/* 803E54F8  91 83 02 D4 */	stw r12, 0x2d4(r3)
/* 803E54FC  7D 83 63 78 */	mr r3, r12
/* 803E5500  41 82 00 A8 */	beq lbl_803E55A8
/* 803E5504  3D 60 E8 00 */	lis r11, 0xe800
/* 803E5508  38 E7 FF FF */	addi r7, r7, -1
/* 803E550C  91 6C 00 00 */	stw r11, 0(r12)
/* 803E5510  38 00 00 00 */	li r0, 0
/* 803E5514  54 BC 62 66 */	rlwinm r28, r5, 0xc, 9, 0x13
/* 803E5518  54 BB 05 7E */	clrlwi r27, r5, 0x15
/* 803E551C  38 A8 FF FF */	addi r5, r8, -1
/* 803E5520  54 E7 10 3A */	slwi r7, r7, 2
/* 803E5524  7C FB 3A 14 */	add r7, r27, r7
/* 803E5528  90 0C 00 04 */	stw r0, 4(r12)
/* 803E552C  54 E7 62 26 */	rlwinm r7, r7, 0xc, 8, 0x13
/* 803E5530  67 88 F2 00 */	oris r8, r28, 0xf200
/* 803E5534  54 C6 05 7E */	clrlwi r6, r6, 0x15
/* 803E5538  54 A5 10 3A */	slwi r5, r5, 2
/* 803E553C  7D 08 33 78 */	or r8, r8, r6
/* 803E5540  50 87 C1 4E */	rlwimi r7, r4, 0x18, 5, 7
/* 803E5544  7C 86 2A 14 */	add r4, r6, r5
/* 803E5548  91 0C 00 08 */	stw r8, 8(r12)
/* 803E554C  50 87 05 3E */	rlwimi r7, r4, 0, 0x14, 0x1f
/* 803E5550  38 BE FF FF */	addi r5, r30, -1
/* 803E5554  90 EC 00 0C */	stw r7, 0xc(r12)
/* 803E5558  55 46 62 66 */	rlwinm r6, r10, 0xc, 9, 0x13
/* 803E555C  38 9F FF FF */	addi r4, r31, -1
/* 803E5560  55 48 05 7E */	clrlwi r8, r10, 0x15
/* 803E5564  91 6C 00 10 */	stw r11, 0x10(r12)
/* 803E5568  54 A5 10 3A */	slwi r5, r5, 2
/* 803E556C  7C A8 2A 14 */	add r5, r8, r5
/* 803E5570  64 C7 F2 00 */	oris r7, r6, 0xf200
/* 803E5574  57 A8 05 7E */	clrlwi r8, r29, 0x15
/* 803E5578  90 0C 00 14 */	stw r0, 0x14(r12)
/* 803E557C  7C E7 43 78 */	or r7, r7, r8
/* 803E5580  54 A6 62 26 */	rlwinm r6, r5, 0xc, 8, 0x13
/* 803E5584  54 84 10 3A */	slwi r4, r4, 2
/* 803E5588  90 EC 00 18 */	stw r7, 0x18(r12)
/* 803E558C  7C A8 22 14 */	add r5, r8, r4
/* 803E5590  51 26 C1 4E */	rlwimi r6, r9, 0x18, 5, 7
/* 803E5594  50 A6 05 3E */	rlwimi r6, r5, 0, 0x14, 0x1f
/* 803E5598  3C 80 DF 00 */	lis r4, 0xdf00
/* 803E559C  90 CC 00 1C */	stw r6, 0x1c(r12)
/* 803E55A0  90 8C 00 20 */	stw r4, 0x20(r12)
/* 803E55A4  90 0C 00 24 */	stw r0, 0x24(r12)
lbl_803E55A8:
/* 803E55A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803E55AC  4B CB 59 6D */	bl func_8009AF18
/* 803E55B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E55B4  7C 08 03 A6 */	mtlr r0
/* 803E55B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803E55BC  4E 80 00 20 */	blr 
