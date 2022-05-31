lbl_803E0BCC:
/* 803E0BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E0BD0  7C 08 02 A6 */	mflr r0
/* 803E0BD4  38 80 00 00 */	li r4, 0
/* 803E0BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E0BDC  48 00 56 C9 */	bl mRmTp_Item1ItemNo2FtrItemNo_AtPlayerRoom
/* 803E0BE0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803E0BE4  28 00 1C 68 */	cmplwi r0, 0x1c68
/* 803E0BE8  41 80 00 0C */	blt lbl_803E0BF4
/* 803E0BEC  28 00 1D 07 */	cmplwi r0, 0x1d07
/* 803E0BF0  40 81 01 A4 */	ble lbl_803E0D94
lbl_803E0BF4:
/* 803E0BF4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803E0BF8  28 00 1B C8 */	cmplwi r0, 0x1bc8
/* 803E0BFC  41 80 00 10 */	blt lbl_803E0C0C
/* 803E0C00  28 00 1C 67 */	cmplwi r0, 0x1c67
/* 803E0C04  41 81 00 08 */	bgt lbl_803E0C0C
/* 803E0C08  48 00 01 8C */	b lbl_803E0D94
lbl_803E0C0C:
/* 803E0C0C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803E0C10  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803E0C14  2C 00 00 01 */	cmpwi r0, 1
/* 803E0C18  41 82 00 0C */	beq lbl_803E0C24
/* 803E0C1C  2C 00 00 03 */	cmpwi r0, 3
/* 803E0C20  40 82 00 50 */	bne lbl_803E0C70
lbl_803E0C24:
/* 803E0C24  48 00 6B 6D */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E0C28  2C 03 00 00 */	cmpwi r3, 0
/* 803E0C2C  41 80 01 68 */	blt lbl_803E0D94
/* 803E0C30  2C 03 04 F2 */	cmpwi r3, 0x4f2
/* 803E0C34  40 80 01 60 */	bge lbl_803E0D94
/* 803E0C38  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E0C3C  7C 64 2E 70 */	srawi r4, r3, 5
/* 803E0C40  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803E0C44  54 60 06 FE */	clrlwi r0, r3, 0x1b
/* 803E0C48  3C A5 00 02 */	addis r5, r5, 2
/* 803E0C4C  38 60 00 01 */	li r3, 1
/* 803E0C50  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 803E0C54  54 84 10 3A */	slwi r4, r4, 2
/* 803E0C58  7C 60 00 30 */	slw r0, r3, r0
/* 803E0C5C  7C 85 22 14 */	add r4, r5, r4
/* 803E0C60  80 64 11 08 */	lwz r3, 0x1108(r4)
/* 803E0C64  7C 60 03 78 */	or r0, r3, r0
/* 803E0C68  90 04 11 08 */	stw r0, 0x1108(r4)
/* 803E0C6C  48 00 01 28 */	b lbl_803E0D94
lbl_803E0C70:
/* 803E0C70  2C 00 00 02 */	cmpwi r0, 2
/* 803E0C74  40 82 01 20 */	bne lbl_803E0D94
/* 803E0C78  54 80 C7 3F */	rlwinm. r0, r4, 0x18, 0x1c, 0x1f
/* 803E0C7C  40 82 00 54 */	bne lbl_803E0CD0
/* 803E0C80  38 A4 E0 00 */	addi r5, r4, -8192
/* 803E0C84  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E0C88  54 A0 D0 0A */	slwi r0, r5, 0x1a
/* 803E0C8C  38 60 00 01 */	li r3, 1
/* 803E0C90  54 A5 0F FE */	srwi r5, r5, 0x1f
/* 803E0C94  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E0C98  7C 05 00 50 */	subf r0, r5, r0
/* 803E0C9C  54 00 30 3E */	rotlwi r0, r0, 6
/* 803E0CA0  3C 84 00 02 */	addis r4, r4, 2
/* 803E0CA4  7C C0 2A 14 */	add r6, r0, r5
/* 803E0CA8  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 803E0CAC  7C C0 2E 70 */	srawi r0, r6, 5
/* 803E0CB0  54 04 10 3A */	slwi r4, r0, 2
/* 803E0CB4  54 C0 06 FE */	clrlwi r0, r6, 0x1b
/* 803E0CB8  7C A5 22 14 */	add r5, r5, r4
/* 803E0CBC  80 85 11 CC */	lwz r4, 0x11cc(r5)
/* 803E0CC0  7C 60 00 30 */	slw r0, r3, r0
/* 803E0CC4  7C 80 03 78 */	or r0, r4, r0
/* 803E0CC8  90 05 11 CC */	stw r0, 0x11cc(r5)
/* 803E0CCC  48 00 00 C8 */	b lbl_803E0D94
lbl_803E0CD0:
/* 803E0CD0  2C 00 00 06 */	cmpwi r0, 6
/* 803E0CD4  40 82 00 40 */	bne lbl_803E0D14
/* 803E0CD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E0CDC  38 C4 DA 00 */	addi r6, r4, -9728
/* 803E0CE0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E0CE4  38 60 00 01 */	li r3, 1
/* 803E0CE8  3C 84 00 02 */	addis r4, r4, 2
/* 803E0CEC  7C C0 2E 70 */	srawi r0, r6, 5
/* 803E0CF0  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 803E0CF4  54 04 10 3A */	slwi r4, r0, 2
/* 803E0CF8  54 C0 06 FE */	clrlwi r0, r6, 0x1b
/* 803E0CFC  7C A5 22 14 */	add r5, r5, r4
/* 803E0D00  80 85 11 C0 */	lwz r4, 0x11c0(r5)
/* 803E0D04  7C 60 00 30 */	slw r0, r3, r0
/* 803E0D08  7C 80 03 78 */	or r0, r4, r0
/* 803E0D0C  90 05 11 C0 */	stw r0, 0x11c0(r5)
/* 803E0D10  48 00 00 84 */	b lbl_803E0D94
lbl_803E0D14:
/* 803E0D14  2C 00 00 07 */	cmpwi r0, 7
/* 803E0D18  40 82 00 40 */	bne lbl_803E0D58
/* 803E0D1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E0D20  38 C4 D9 00 */	addi r6, r4, -9984
/* 803E0D24  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E0D28  38 60 00 01 */	li r3, 1
/* 803E0D2C  3C 84 00 02 */	addis r4, r4, 2
/* 803E0D30  7C C0 2E 70 */	srawi r0, r6, 5
/* 803E0D34  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 803E0D38  54 04 10 3A */	slwi r4, r0, 2
/* 803E0D3C  54 C0 06 FE */	clrlwi r0, r6, 0x1b
/* 803E0D40  7C A5 22 14 */	add r5, r5, r4
/* 803E0D44  80 85 11 B4 */	lwz r4, 0x11b4(r5)
/* 803E0D48  7C 60 00 30 */	slw r0, r3, r0
/* 803E0D4C  7C 80 03 78 */	or r0, r4, r0
/* 803E0D50  90 05 11 B4 */	stw r0, 0x11b4(r5)
/* 803E0D54  48 00 00 40 */	b lbl_803E0D94
lbl_803E0D58:
/* 803E0D58  2C 00 00 0A */	cmpwi r0, 0xa
/* 803E0D5C  40 82 00 38 */	bne lbl_803E0D94
/* 803E0D60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E0D64  38 C4 D6 00 */	addi r6, r4, -10752
/* 803E0D68  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E0D6C  3C 84 00 02 */	addis r4, r4, 2
/* 803E0D70  38 60 00 01 */	li r3, 1
/* 803E0D74  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 803E0D78  54 C4 EC FA */	rlwinm r4, r6, 0x1d, 0x13, 0x1d
/* 803E0D7C  54 C0 06 FE */	clrlwi r0, r6, 0x1b
/* 803E0D80  7C 85 22 14 */	add r4, r5, r4
/* 803E0D84  7C 60 00 30 */	slw r0, r3, r0
/* 803E0D88  80 64 11 D4 */	lwz r3, 0x11d4(r4)
/* 803E0D8C  7C 60 03 78 */	or r0, r3, r0
/* 803E0D90  90 04 11 D4 */	stw r0, 0x11d4(r4)
lbl_803E0D94:
/* 803E0D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E0D98  7C 08 03 A6 */	mtlr r0
/* 803E0D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E0DA0  4E 80 00 20 */	blr 
