lbl_803A45C0:
/* 803A45C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A45C4  7C 08 02 A6 */	mflr r0
/* 803A45C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A45CC  39 61 00 30 */	addi r11, r1, 0x30
/* 803A45D0  4B CF 68 FD */	bl func_8009AECC
/* 803A45D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A45D8  38 00 00 00 */	li r0, 0
/* 803A45DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A45E0  38 80 00 01 */	li r4, 1
/* 803A45E4  3F A3 00 01 */	addis r29, r3, 1
/* 803A45E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 803A45EC  3C 60 80 65 */	lis r3, g_block_kind_p@ha /* 0x80653D20@ha */
/* 803A45F0  3B 60 00 01 */	li r27, 1
/* 803A45F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A45F8  3B E3 3D 20 */	addi r31, r3, g_block_kind_p@l /* 0x80653D20@l */
/* 803A45FC  3B BD 41 A8 */	addi r29, r29, 0x41a8
/* 803A4600  90 01 00 08 */	stw r0, 8(r1)
lbl_803A4604:
/* 803A4604  38 1B 00 01 */	addi r0, r27, 1
/* 803A4608  3B 80 00 00 */	li r28, 0
/* 803A460C  1F C0 00 07 */	mulli r30, r0, 7
lbl_803A4610:
/* 803A4610  7C 7C F2 14 */	add r3, r28, r30
/* 803A4614  80 BF 00 00 */	lwz r5, 0(r31)
/* 803A4618  38 03 00 01 */	addi r0, r3, 1
/* 803A461C  7F A3 EB 78 */	mr r3, r29
/* 803A4620  54 00 10 3A */	slwi r0, r0, 2
/* 803A4624  38 81 00 10 */	addi r4, r1, 0x10
/* 803A4628  7C E5 00 2E */	lwzx r7, r5, r0
/* 803A462C  38 A1 00 0C */	addi r5, r1, 0xc
/* 803A4630  38 C1 00 08 */	addi r6, r1, 8
/* 803A4634  4B FF FE B9 */	bl mFM_RenewalReserveBlock
/* 803A4638  3B 9C 00 01 */	addi r28, r28, 1
/* 803A463C  3B BD 02 00 */	addi r29, r29, 0x200
/* 803A4640  2C 1C 00 05 */	cmpwi r28, 5
/* 803A4644  41 80 FF CC */	blt lbl_803A4610
/* 803A4648  3B 7B 00 01 */	addi r27, r27, 1
/* 803A464C  2C 1B 00 06 */	cmpwi r27, 6
/* 803A4650  41 80 FF B4 */	blt lbl_803A4604
/* 803A4654  39 61 00 30 */	addi r11, r1, 0x30
/* 803A4658  4B CF 68 C1 */	bl func_8009AF18
/* 803A465C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A4660  7C 08 03 A6 */	mtlr r0
/* 803A4664  38 21 00 30 */	addi r1, r1, 0x30
/* 803A4668  4E 80 00 20 */	blr 
