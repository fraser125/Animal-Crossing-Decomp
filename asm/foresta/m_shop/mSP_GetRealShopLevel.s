lbl_803E99E0:
/* 803E99E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E99E4  7C 08 02 A6 */	mflr r0
/* 803E99E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E99EC  4B FF FF 65 */	bl mSP_GetSalesSum
/* 803E99F0  3C 80 00 04 */	lis r4, 0x0004 /* 0x0003A980@ha */
/* 803E99F4  38 04 A9 80 */	addi r0, r4, 0xA980 /* 0x0003A980@l */
/* 803E99F8  7C 03 00 40 */	cmplw r3, r0
/* 803E99FC  41 80 00 24 */	blt lbl_803E9A20
/* 803E9A00  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9A04  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E9A08  3C 84 00 02 */	addis r4, r4, 2
/* 803E9A0C  80 04 04 7C */	lwz r0, 0x47c(r4)
/* 803E9A10  2C 00 00 00 */	cmpwi r0, 0
/* 803E9A14  41 82 00 0C */	beq lbl_803E9A20
/* 803E9A18  38 60 00 03 */	li r3, 3
/* 803E9A1C  48 00 00 2C */	b lbl_803E9A48
lbl_803E9A20:
/* 803E9A20  3C 80 00 01 */	lis r4, 0x0001 /* 0x00015F90@ha */
/* 803E9A24  38 04 5F 90 */	addi r0, r4, 0x5F90 /* 0x00015F90@l */
/* 803E9A28  7C 03 00 40 */	cmplw r3, r0
/* 803E9A2C  41 80 00 0C */	blt lbl_803E9A38
/* 803E9A30  38 60 00 02 */	li r3, 2
/* 803E9A34  48 00 00 14 */	b lbl_803E9A48
lbl_803E9A38:
/* 803E9A38  38 00 61 A8 */	li r0, 0x61a8
/* 803E9A3C  38 80 FF FF */	li r4, -1
/* 803E9A40  7C 00 18 10 */	subfc r0, r0, r3
/* 803E9A44  7C 64 01 90 */	subfze r3, r4
lbl_803E9A48:
/* 803E9A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E9A4C  7C 08 03 A6 */	mtlr r0
/* 803E9A50  38 21 00 10 */	addi r1, r1, 0x10
/* 803E9A54  4E 80 00 20 */	blr 
