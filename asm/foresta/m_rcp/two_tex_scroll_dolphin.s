lbl_803E55C0:
/* 803E55C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E55C4  7C 08 02 A6 */	mflr r0
/* 803E55C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E55CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803E55D0  4B CB 59 01 */	bl func_8009AED0
/* 803E55D4  81 63 02 D4 */	lwz r11, 0x2d4(r3)
/* 803E55D8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 803E55DC  35 6B FF E8 */	addic. r11, r11, -24
/* 803E55E0  83 81 00 2C */	lwz r28, 0x2c(r1)
/* 803E55E4  83 A1 00 30 */	lwz r29, 0x30(r1)
/* 803E55E8  91 63 02 D4 */	stw r11, 0x2d4(r3)
/* 803E55EC  7D 63 5B 78 */	mr r3, r11
/* 803E55F0  41 82 00 84 */	beq lbl_803E5674
/* 803E55F4  54 AC 5A 28 */	rlwinm r12, r5, 0xb, 8, 0x14
/* 803E55F8  38 A7 FF FF */	addi r5, r7, -1
/* 803E55FC  54 84 C1 4E */	rlwinm r4, r4, 0x18, 5, 7
/* 803E5600  3B E8 FF FF */	addi r31, r8, -1
/* 803E5604  65 87 F2 00 */	oris r7, r12, 0xf200
/* 803E5608  54 A5 05 BE */	clrlwi r5, r5, 0x16
/* 803E560C  7C FE 2B 78 */	or r30, r7, r5
/* 803E5610  64 8C 80 00 */	oris r12, r4, 0x8000
/* 803E5614  54 C8 5A 28 */	rlwinm r8, r6, 0xb, 8, 0x14
/* 803E5618  55 24 C1 4E */	rlwinm r4, r9, 0x18, 5, 7
/* 803E561C  55 47 5A 28 */	rlwinm r7, r10, 0xb, 8, 0x14
/* 803E5620  38 BC FF FF */	addi r5, r28, -1
/* 803E5624  38 DD FF FF */	addi r6, r29, -1
/* 803E5628  93 CB 00 00 */	stw r30, 0(r11)
/* 803E562C  57 E9 05 BE */	clrlwi r9, r31, 0x16
/* 803E5630  7D 88 43 78 */	or r8, r12, r8
/* 803E5634  7D 28 43 78 */	or r8, r9, r8
/* 803E5638  64 E7 F2 00 */	oris r7, r7, 0xf200
/* 803E563C  54 A5 05 BE */	clrlwi r5, r5, 0x16
/* 803E5640  91 0B 00 04 */	stw r8, 4(r11)
/* 803E5644  7C E7 2B 78 */	or r7, r7, r5
/* 803E5648  54 00 5A 28 */	rlwinm r0, r0, 0xb, 8, 0x14
/* 803E564C  64 85 80 00 */	oris r5, r4, 0x8000
/* 803E5650  90 EB 00 08 */	stw r7, 8(r11)
/* 803E5654  7C A5 03 78 */	or r5, r5, r0
/* 803E5658  54 C6 05 BE */	clrlwi r6, r6, 0x16
/* 803E565C  7C C5 2B 78 */	or r5, r6, r5
/* 803E5660  3C 80 DF 00 */	lis r4, 0xdf00
/* 803E5664  90 AB 00 0C */	stw r5, 0xc(r11)
/* 803E5668  38 00 00 00 */	li r0, 0
/* 803E566C  90 8B 00 10 */	stw r4, 0x10(r11)
/* 803E5670  90 0B 00 14 */	stw r0, 0x14(r11)
lbl_803E5674:
/* 803E5674  39 61 00 20 */	addi r11, r1, 0x20
/* 803E5678  4B CB 58 A5 */	bl func_8009AF1C
/* 803E567C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E5680  7C 08 03 A6 */	mtlr r0
/* 803E5684  38 21 00 20 */	addi r1, r1, 0x20
/* 803E5688  4E 80 00 20 */	blr 
