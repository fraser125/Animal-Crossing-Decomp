lbl_805DAC44:
/* 805DAC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DAC48  7C 08 02 A6 */	mflr r0
/* 805DAC4C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 805DAC50  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DAC54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DAC58  3B E0 00 00 */	li r31, 0
/* 805DAC5C  93 C1 00 08 */	stw r30, 8(r1)
/* 805DAC60  7C 7E 1B 78 */	mr r30, r3
/* 805DAC64  38 64 80 00 */	addi r3, r4, 0x8000 /* 0x00008000@l */
/* 805DAC68  4B DB B2 09 */	bl chkButton
/* 805DAC6C  2C 03 00 00 */	cmpwi r3, 0
/* 805DAC70  41 82 00 08 */	beq lbl_805DAC78
/* 805DAC74  3B E0 00 01 */	li r31, 1
lbl_805DAC78:
/* 805DAC78  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805DAC7C  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805DAC80  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805DAC84  3C 80 80 6D */	lis r4, tex_1406@ha /* 0x806CCE24@ha */
/* 805DAC88  90 06 00 00 */	stw r0, 0(r6)
/* 805DAC8C  3C 60 80 A7 */	lis r3, kai_sousa_abuttonT_model@ha /* 0x80A6DD18@ha */
/* 805DAC90  57 E0 10 3A */	slwi r0, r31, 2
/* 805DAC94  38 84 CE 24 */	addi r4, r4, tex_1406@l /* 0x806CCE24@l */
/* 805DAC98  7C A4 00 2E */	lwzx r5, r4, r0
/* 805DAC9C  3C 80 DE 00 */	lis r4, 0xde00
/* 805DACA0  38 03 DD 18 */	addi r0, r3, kai_sousa_abuttonT_model@l /* 0x80A6DD18@l */
/* 805DACA4  90 A6 00 04 */	stw r5, 4(r6)
/* 805DACA8  38 C6 00 08 */	addi r6, r6, 8
/* 805DACAC  7C C3 33 78 */	mr r3, r6
/* 805DACB0  90 86 00 00 */	stw r4, 0(r6)
/* 805DACB4  38 C6 00 08 */	addi r6, r6, 8
/* 805DACB8  90 03 00 04 */	stw r0, 4(r3)
/* 805DACBC  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 805DACC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DACC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DACC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DACCC  7C 08 03 A6 */	mtlr r0
/* 805DACD0  38 21 00 10 */	addi r1, r1, 0x10
/* 805DACD4  4E 80 00 20 */	blr 
