lbl_803A6C38:
/* 803A6C38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A6C3C  7C 08 02 A6 */	mflr r0
/* 803A6C40  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A6C44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803A6C48  7C 7F 1B 78 */	mr r31, r3
/* 803A6C4C  38 61 00 14 */	addi r3, r1, 0x14
/* 803A6C50  80 C4 00 00 */	lwz r6, 0(r4)
/* 803A6C54  80 A4 00 04 */	lwz r5, 4(r4)
/* 803A6C58  80 04 00 08 */	lwz r0, 8(r4)
/* 803A6C5C  38 81 00 08 */	addi r4, r1, 8
/* 803A6C60  90 C1 00 08 */	stw r6, 8(r1)
/* 803A6C64  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803A6C68  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A6C6C  4B FF EC E1 */	bl mFI_WpostoLposInBK
/* 803A6C70  3C 60 80 64 */	lis r3, lit_637@ha /* 0x80641F44@ha */
/* 803A6C74  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 803A6C78  C0 03 1F 44 */	lfs f0, lit_637@l(r3)  /* 0x80641F44@l */
/* 803A6C7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803A6C80  4C 41 13 82 */	cror 2, 1, 2
/* 803A6C84  40 82 00 50 */	bne lbl_803A6CD4
/* 803A6C88  3C 60 81 16 */	lis r3, l_barea@ha /* 0x81167C00@ha */
/* 803A6C8C  38 00 00 03 */	li r0, 3
/* 803A6C90  38 A3 7C 00 */	addi r5, r3, l_barea@l /* 0x81167C00@l */
/* 803A6C94  38 C0 00 00 */	li r6, 0
/* 803A6C98  38 60 00 00 */	li r3, 0
/* 803A6C9C  7C 09 03 A6 */	mtctr r0
lbl_803A6CA0:
/* 803A6CA0  7C 85 1A 14 */	add r4, r5, r3
/* 803A6CA4  C0 04 00 08 */	lfs f0, 8(r4)
/* 803A6CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803A6CAC  40 80 00 1C */	bge lbl_803A6CC8
/* 803A6CB0  38 00 00 01 */	li r0, 1
/* 803A6CB4  88 7F 00 00 */	lbz r3, 0(r31)
/* 803A6CB8  7C 00 30 30 */	slw r0, r0, r6
/* 803A6CBC  7C 60 03 78 */	or r0, r3, r0
/* 803A6CC0  98 1F 00 00 */	stb r0, 0(r31)
/* 803A6CC4  48 00 00 10 */	b lbl_803A6CD4
lbl_803A6CC8:
/* 803A6CC8  38 C6 00 01 */	addi r6, r6, 1
/* 803A6CCC  38 63 00 04 */	addi r3, r3, 4
/* 803A6CD0  42 00 FF D0 */	bdnz lbl_803A6CA0
lbl_803A6CD4:
/* 803A6CD4  3C 60 80 64 */	lis r3, lit_637@ha /* 0x80641F44@ha */
/* 803A6CD8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 803A6CDC  C0 03 1F 44 */	lfs f0, lit_637@l(r3)  /* 0x80641F44@l */
/* 803A6CE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803A6CE4  4C 41 13 82 */	cror 2, 1, 2
/* 803A6CE8  40 82 00 50 */	bne lbl_803A6D38
/* 803A6CEC  3C 60 81 16 */	lis r3, l_barea@ha /* 0x81167C00@ha */
/* 803A6CF0  38 00 00 03 */	li r0, 3
/* 803A6CF4  38 A3 7C 00 */	addi r5, r3, l_barea@l /* 0x81167C00@l */
/* 803A6CF8  38 C0 00 03 */	li r6, 3
/* 803A6CFC  38 60 00 0C */	li r3, 0xc
/* 803A6D00  7C 09 03 A6 */	mtctr r0
lbl_803A6D04:
/* 803A6D04  7C 85 1A 14 */	add r4, r5, r3
/* 803A6D08  C0 04 00 08 */	lfs f0, 8(r4)
/* 803A6D0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803A6D10  40 80 00 1C */	bge lbl_803A6D2C
/* 803A6D14  38 00 00 01 */	li r0, 1
/* 803A6D18  88 7F 00 00 */	lbz r3, 0(r31)
/* 803A6D1C  7C 00 30 30 */	slw r0, r0, r6
/* 803A6D20  7C 60 03 78 */	or r0, r3, r0
/* 803A6D24  98 1F 00 00 */	stb r0, 0(r31)
/* 803A6D28  48 00 00 10 */	b lbl_803A6D38
lbl_803A6D2C:
/* 803A6D2C  38 C6 00 01 */	addi r6, r6, 1
/* 803A6D30  38 63 00 04 */	addi r3, r3, 4
/* 803A6D34  42 00 FF D0 */	bdnz lbl_803A6D04
lbl_803A6D38:
/* 803A6D38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A6D3C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803A6D40  7C 08 03 A6 */	mtlr r0
/* 803A6D44  38 21 00 30 */	addi r1, r1, 0x30
/* 803A6D48  4E 80 00 20 */	blr 
