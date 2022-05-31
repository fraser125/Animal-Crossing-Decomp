lbl_803FD304:
/* 803FD304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FD308  7C 08 02 A6 */	mflr r0
/* 803FD30C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FD310  39 61 00 20 */	addi r11, r1, 0x20
/* 803FD314  4B C9 DB C1 */	bl func_8009AED4
/* 803FD318  7C 69 1B 78 */	mr r9, r3
/* 803FD31C  3C 60 80 66 */	lis r3, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FD320  80 09 01 9C */	lwz r0, 0x19c(r9)
/* 803FD324  38 63 E7 08 */	addi r3, r3, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FD328  80 A9 00 0C */	lwz r5, 0xc(r9)
/* 803FD32C  7C 9D 23 78 */	mr r29, r4
/* 803FD330  2C 00 00 01 */	cmpwi r0, 1
/* 803FD334  80 83 00 0C */	lwz r4, 0xc(r3)
/* 803FD338  81 09 00 00 */	lwz r8, 0(r9)
/* 803FD33C  7C A3 2B 78 */	mr r3, r5
/* 803FD340  40 82 00 10 */	bne lbl_803FD350
/* 803FD344  3C 80 80 66 */	lis r4, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 803FD348  38 04 E6 A8 */	addi r0, r4, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
/* 803FD34C  7C 04 03 78 */	mr r4, r0
lbl_803FD350:
/* 803FD350  28 05 00 00 */	cmplwi r5, 0
/* 803FD354  41 82 00 6C */	beq lbl_803FD3C0
/* 803FD358  2C 08 FF FF */	cmpwi r8, -1
/* 803FD35C  41 82 00 64 */	beq lbl_803FD3C0
/* 803FD360  1C E8 00 94 */	mulli r7, r8, 0x94
/* 803FD364  3C C0 00 07 */	lis r6, 0x0007 /* 0x00072000@ha */
/* 803FD368  80 A9 00 08 */	lwz r5, 8(r9)
/* 803FD36C  38 C6 20 00 */	addi r6, r6, 0x2000 /* 0x00072000@l */
/* 803FD370  3B E7 00 54 */	addi r31, r7, 0x54
/* 803FD374  7F E9 FA 14 */	add r31, r9, r31
/* 803FD378  38 E0 00 00 */	li r7, 0
/* 803FD37C  39 3F 00 74 */	addi r9, r31, 0x74
/* 803FD380  4B FF B4 69 */	bl mCD_write_comp_bg
/* 803FD384  7C 60 1B 78 */	mr r0, r3
/* 803FD388  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FD38C  7C 1E 03 78 */	mr r30, r0
/* 803FD390  4B FF CF 25 */	bl mCD_TransErrorCode
/* 803FD394  2C 1E 00 01 */	cmpwi r30, 1
/* 803FD398  90 7F 00 78 */	stw r3, 0x78(r31)
/* 803FD39C  40 82 00 14 */	bne lbl_803FD3B0
/* 803FD3A0  80 7D 00 00 */	lwz r3, 0(r29)
/* 803FD3A4  38 03 00 01 */	addi r0, r3, 1
/* 803FD3A8  90 1D 00 00 */	stw r0, 0(r29)
/* 803FD3AC  48 00 00 18 */	b lbl_803FD3C4
lbl_803FD3B0:
/* 803FD3B0  2C 1E 00 00 */	cmpwi r30, 0
/* 803FD3B4  41 82 00 10 */	beq lbl_803FD3C4
/* 803FD3B8  3B C0 FF FF */	li r30, -1
/* 803FD3BC  48 00 00 08 */	b lbl_803FD3C4
lbl_803FD3C0:
/* 803FD3C0  3B C0 FF FF */	li r30, -1
lbl_803FD3C4:
/* 803FD3C4  7F C3 F3 78 */	mr r3, r30
/* 803FD3C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FD3CC  4B C9 DB 55 */	bl func_8009AF20
/* 803FD3D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FD3D4  7C 08 03 A6 */	mtlr r0
/* 803FD3D8  38 21 00 20 */	addi r1, r1, 0x20
/* 803FD3DC  4E 80 00 20 */	blr 
