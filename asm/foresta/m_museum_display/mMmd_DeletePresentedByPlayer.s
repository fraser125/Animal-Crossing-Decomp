lbl_803C7C6C:
/* 803C7C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C7C70  7C 08 02 A6 */	mflr r0
/* 803C7C74  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803C7C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7C7C  28 03 00 04 */	cmplwi r3, 4
/* 803C7C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C7C84  3B E3 00 01 */	addi r31, r3, 1
/* 803C7C88  93 C1 00 08 */	stw r30, 8(r1)
/* 803C7C8C  40 80 01 84 */	bge lbl_803C7E10
/* 803C7C90  3B C0 00 00 */	li r30, 0
lbl_803C7C94:
/* 803C7C94  7F C3 F3 78 */	mr r3, r30
/* 803C7C98  4B FF F7 91 */	bl mMmd_ArtInfo
/* 803C7C9C  7C 03 F8 00 */	cmpw r3, r31
/* 803C7CA0  40 82 00 44 */	bne lbl_803C7CE4
/* 803C7CA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C7CA8  7F C4 0E 70 */	srawi r4, r30, 1
/* 803C7CAC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803C7CB0  57 C5 17 7A */	rlwinm r5, r30, 2, 0x1d, 0x1d
/* 803C7CB4  7C 80 22 14 */	add r4, r0, r4
/* 803C7CB8  38 60 00 0F */	li r3, 0xf
/* 803C7CBC  3C C4 00 02 */	addis r6, r4, 2
/* 803C7CC0  38 00 00 05 */	li r0, 5
/* 803C7CC4  88 86 13 B5 */	lbz r4, 0x13b5(r6)
/* 803C7CC8  7C 63 28 30 */	slw r3, r3, r5
/* 803C7CCC  7C 00 28 30 */	slw r0, r0, r5
/* 803C7CD0  7C 83 18 78 */	andc r3, r4, r3
/* 803C7CD4  98 66 13 B5 */	stb r3, 0x13b5(r6)
/* 803C7CD8  88 66 13 B5 */	lbz r3, 0x13b5(r6)
/* 803C7CDC  7C 60 03 78 */	or r0, r3, r0
/* 803C7CE0  98 06 13 B5 */	stb r0, 0x13b5(r6)
lbl_803C7CE4:
/* 803C7CE4  3B DE 00 01 */	addi r30, r30, 1
/* 803C7CE8  2C 1E 00 0F */	cmpwi r30, 0xf
/* 803C7CEC  41 80 FF A8 */	blt lbl_803C7C94
/* 803C7CF0  3B C0 00 00 */	li r30, 0
lbl_803C7CF4:
/* 803C7CF4  7F C3 F3 78 */	mr r3, r30
/* 803C7CF8  4B FF F6 E1 */	bl func_803C73D8
/* 803C7CFC  7C 03 F8 00 */	cmpw r3, r31
/* 803C7D00  40 82 00 44 */	bne lbl_803C7D44
/* 803C7D04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C7D08  7F C4 0E 70 */	srawi r4, r30, 1
/* 803C7D0C  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803C7D10  57 C5 17 7A */	rlwinm r5, r30, 2, 0x1d, 0x1d
/* 803C7D14  7C 80 22 14 */	add r4, r0, r4
/* 803C7D18  38 60 00 0F */	li r3, 0xf
/* 803C7D1C  3C C4 00 02 */	addis r6, r4, 2
/* 803C7D20  38 00 00 05 */	li r0, 5
/* 803C7D24  88 86 13 A8 */	lbz r4, 0x13a8(r6)
/* 803C7D28  7C 63 28 30 */	slw r3, r3, r5
/* 803C7D2C  7C 00 28 30 */	slw r0, r0, r5
/* 803C7D30  7C 83 18 78 */	andc r3, r4, r3
/* 803C7D34  98 66 13 A8 */	stb r3, 0x13a8(r6)
/* 803C7D38  88 66 13 A8 */	lbz r3, 0x13a8(r6)
/* 803C7D3C  7C 60 03 78 */	or r0, r3, r0
/* 803C7D40  98 06 13 A8 */	stb r0, 0x13a8(r6)
lbl_803C7D44:
/* 803C7D44  3B DE 00 01 */	addi r30, r30, 1
/* 803C7D48  2C 1E 00 19 */	cmpwi r30, 0x19
/* 803C7D4C  41 80 FF A8 */	blt lbl_803C7CF4
/* 803C7D50  3B C0 00 00 */	li r30, 0
lbl_803C7D54:
/* 803C7D54  7F C3 F3 78 */	mr r3, r30
/* 803C7D58  4B FF F7 21 */	bl mMmd_InsectInfo
/* 803C7D5C  7C 03 F8 00 */	cmpw r3, r31
/* 803C7D60  40 82 00 44 */	bne lbl_803C7DA4
/* 803C7D64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C7D68  7F C4 0E 70 */	srawi r4, r30, 1
/* 803C7D6C  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803C7D70  57 C5 17 7A */	rlwinm r5, r30, 2, 0x1d, 0x1d
/* 803C7D74  7C 80 22 14 */	add r4, r0, r4
/* 803C7D78  38 60 00 0F */	li r3, 0xf
/* 803C7D7C  3C C4 00 02 */	addis r6, r4, 2
/* 803C7D80  38 00 00 05 */	li r0, 5
/* 803C7D84  88 86 13 D2 */	lbz r4, 0x13d2(r6)
/* 803C7D88  7C 63 28 30 */	slw r3, r3, r5
/* 803C7D8C  7C 00 28 30 */	slw r0, r0, r5
/* 803C7D90  7C 83 18 78 */	andc r3, r4, r3
/* 803C7D94  98 66 13 D2 */	stb r3, 0x13d2(r6)
/* 803C7D98  88 66 13 D2 */	lbz r3, 0x13d2(r6)
/* 803C7D9C  7C 60 03 78 */	or r0, r3, r0
/* 803C7DA0  98 06 13 D2 */	stb r0, 0x13d2(r6)
lbl_803C7DA4:
/* 803C7DA4  3B DE 00 01 */	addi r30, r30, 1
/* 803C7DA8  2C 1E 00 28 */	cmpwi r30, 0x28
/* 803C7DAC  41 80 FF A8 */	blt lbl_803C7D54
/* 803C7DB0  3B C0 00 00 */	li r30, 0
lbl_803C7DB4:
/* 803C7DB4  7F C3 F3 78 */	mr r3, r30
/* 803C7DB8  4B FF F7 11 */	bl mMmd_FishInfo
/* 803C7DBC  7C 03 F8 00 */	cmpw r3, r31
/* 803C7DC0  40 82 00 44 */	bne lbl_803C7E04
/* 803C7DC4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C7DC8  7F C4 0E 70 */	srawi r4, r30, 1
/* 803C7DCC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803C7DD0  57 C5 17 7A */	rlwinm r5, r30, 2, 0x1d, 0x1d
/* 803C7DD4  7C 80 22 14 */	add r4, r0, r4
/* 803C7DD8  38 60 00 0F */	li r3, 0xf
/* 803C7DDC  3C C4 00 02 */	addis r6, r4, 2
/* 803C7DE0  38 00 00 05 */	li r0, 5
/* 803C7DE4  88 86 13 BD */	lbz r4, 0x13bd(r6)
/* 803C7DE8  7C 63 28 30 */	slw r3, r3, r5
/* 803C7DEC  7C 00 28 30 */	slw r0, r0, r5
/* 803C7DF0  7C 83 18 78 */	andc r3, r4, r3
/* 803C7DF4  98 66 13 BD */	stb r3, 0x13bd(r6)
/* 803C7DF8  88 66 13 BD */	lbz r3, 0x13bd(r6)
/* 803C7DFC  7C 60 03 78 */	or r0, r3, r0
/* 803C7E00  98 06 13 BD */	stb r0, 0x13bd(r6)
lbl_803C7E04:
/* 803C7E04  3B DE 00 01 */	addi r30, r30, 1
/* 803C7E08  2C 1E 00 28 */	cmpwi r30, 0x28
/* 803C7E0C  41 80 FF A8 */	blt lbl_803C7DB4
lbl_803C7E10:
/* 803C7E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C7E18  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C7E1C  7C 08 03 A6 */	mtlr r0
/* 803C7E20  38 21 00 10 */	addi r1, r1, 0x10
/* 803C7E24  4E 80 00 20 */	blr 
