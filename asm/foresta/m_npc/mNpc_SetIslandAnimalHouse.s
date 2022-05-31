lbl_803D3BC4:
/* 803D3BC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D3BC8  7C 08 02 A6 */	mflr r0
/* 803D3BCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D3BD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D3BD4  7C 7F 1B 78 */	mr r31, r3
/* 803D3BD8  38 61 00 08 */	addi r3, r1, 8
/* 803D3BDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D3BE0  3B C0 00 00 */	li r30, 0
/* 803D3BE4  4B FD 28 F5 */	bl mFI_GetIslandBlockNumX
/* 803D3BE8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D3BEC  39 20 00 00 */	li r9, 0
/* 803D3BF0  39 03 85 38 */	addi r8, r3, common_data@l /* 0x81138538@l */
/* 803D3BF4  38 60 00 00 */	li r3, 0
/* 803D3BF8  38 80 00 00 */	li r4, 0
lbl_803D3BFC:
/* 803D3BFC  7C A8 22 14 */	add r5, r8, r4
/* 803D3C00  3C A5 00 02 */	addis r5, r5, 2
/* 803D3C04  34 A5 25 54 */	addic. r5, r5, 0x2554
/* 803D3C08  41 82 00 60 */	beq lbl_803D3C68
/* 803D3C0C  38 00 01 00 */	li r0, 0x100
/* 803D3C10  39 40 00 00 */	li r10, 0
/* 803D3C14  7C 09 03 A6 */	mtctr r0
lbl_803D3C18:
/* 803D3C18  A0 05 00 00 */	lhz r0, 0(r5)
/* 803D3C1C  28 00 58 51 */	cmplwi r0, 0x5851
/* 803D3C20  40 82 00 34 */	bne lbl_803D3C54
/* 803D3C24  38 C1 00 08 */	addi r6, r1, 8
/* 803D3C28  7D 45 26 70 */	srawi r5, r10, 4
/* 803D3C2C  7C E6 18 2E */	lwzx r7, r6, r3
/* 803D3C30  38 05 00 01 */	addi r0, r5, 1
/* 803D3C34  38 C0 00 08 */	li r6, 8
/* 803D3C38  55 45 07 3E */	clrlwi r5, r10, 0x1c
/* 803D3C3C  98 FF 00 01 */	stb r7, 1(r31)
/* 803D3C40  3B C0 00 01 */	li r30, 1
/* 803D3C44  98 DF 00 02 */	stb r6, 2(r31)
/* 803D3C48  98 BF 00 03 */	stb r5, 3(r31)
/* 803D3C4C  98 1F 00 04 */	stb r0, 4(r31)
/* 803D3C50  48 00 00 10 */	b lbl_803D3C60
lbl_803D3C54:
/* 803D3C54  38 A5 00 02 */	addi r5, r5, 2
/* 803D3C58  39 4A 00 01 */	addi r10, r10, 1
/* 803D3C5C  42 00 FF BC */	bdnz lbl_803D3C18
lbl_803D3C60:
/* 803D3C60  2C 1E 00 01 */	cmpwi r30, 1
/* 803D3C64  41 82 00 18 */	beq lbl_803D3C7C
lbl_803D3C68:
/* 803D3C68  39 29 00 01 */	addi r9, r9, 1
/* 803D3C6C  38 84 02 00 */	addi r4, r4, 0x200
/* 803D3C70  2C 09 00 02 */	cmpwi r9, 2
/* 803D3C74  38 63 00 04 */	addi r3, r3, 4
/* 803D3C78  41 80 FF 84 */	blt lbl_803D3BFC
lbl_803D3C7C:
/* 803D3C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D3C80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D3C84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D3C88  7C 08 03 A6 */	mtlr r0
/* 803D3C8C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D3C90  4E 80 00 20 */	blr 
