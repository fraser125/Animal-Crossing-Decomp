lbl_8052E324:
/* 8052E324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052E328  7C 08 02 A6 */	mflr r0
/* 8052E32C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052E330  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E334  4B B6 CB A1 */	bl func_8009AED4
/* 8052E338  3C 80 80 6A */	lis r4, data_806A1400@ha /* 0x806A1400@ha */
/* 8052E33C  7C 7D 1B 78 */	mr r29, r3
/* 8052E340  3B E4 14 00 */	addi r31, r4, data_806A1400@l /* 0x806A1400@l */
/* 8052E344  38 60 00 04 */	li r3, 4
/* 8052E348  38 80 00 00 */	li r4, 0
/* 8052E34C  4B E6 A1 31 */	bl mDemo_Get_OrderValue
/* 8052E350  A0 9D 08 7E */	lhz r4, 0x87e(r29)
/* 8052E354  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 8052E358  88 7D 09 72 */	lbz r3, 0x972(r29)
/* 8052E35C  28 04 00 00 */	cmplwi r4, 0
/* 8052E360  40 82 00 10 */	bne lbl_8052E370
/* 8052E364  38 DF 0A 98 */	addi r6, r31, 0xa98
/* 8052E368  38 BF 0A F0 */	addi r5, r31, 0xaf0
/* 8052E36C  48 00 00 38 */	b lbl_8052E3A4
lbl_8052E370:
/* 8052E370  28 04 23 00 */	cmplwi r4, 0x2300
/* 8052E374  38 00 00 00 */	li r0, 0
/* 8052E378  41 80 00 10 */	blt lbl_8052E388
/* 8052E37C  28 04 23 28 */	cmplwi r4, 0x2328
/* 8052E380  41 81 00 08 */	bgt lbl_8052E388
/* 8052E384  38 00 00 01 */	li r0, 1
lbl_8052E388:
/* 8052E388  2C 00 00 01 */	cmpwi r0, 1
/* 8052E38C  40 82 00 10 */	bne lbl_8052E39C
/* 8052E390  38 DF 0B 48 */	addi r6, r31, 0xb48
/* 8052E394  38 BF 0B A0 */	addi r5, r31, 0xba0
/* 8052E398  48 00 00 0C */	b lbl_8052E3A4
lbl_8052E39C:
/* 8052E39C  38 DF 0B F8 */	addi r6, r31, 0xbf8
/* 8052E3A0  38 BF 0C 50 */	addi r5, r31, 0xc50
lbl_8052E3A4:
/* 8052E3A4  2C 1E 00 00 */	cmpwi r30, 0
/* 8052E3A8  41 82 00 54 */	beq lbl_8052E3FC
/* 8052E3AC  2C 1E 00 FF */	cmpwi r30, 0xff
/* 8052E3B0  38 A0 00 01 */	li r5, 1
/* 8052E3B4  40 82 00 0C */	bne lbl_8052E3C0
/* 8052E3B8  38 80 00 15 */	li r4, 0x15
/* 8052E3BC  48 00 00 30 */	b lbl_8052E3EC
lbl_8052E3C0:
/* 8052E3C0  2C 1E 00 FE */	cmpwi r30, 0xfe
/* 8052E3C4  40 82 00 0C */	bne lbl_8052E3D0
/* 8052E3C8  38 80 00 38 */	li r4, 0x38
/* 8052E3CC  48 00 00 20 */	b lbl_8052E3EC
lbl_8052E3D0:
/* 8052E3D0  2C 1E 00 FD */	cmpwi r30, 0xfd
/* 8052E3D4  40 82 00 0C */	bne lbl_8052E3E0
/* 8052E3D8  38 80 00 40 */	li r4, 0x40
/* 8052E3DC  48 00 00 10 */	b lbl_8052E3EC
lbl_8052E3E0:
/* 8052E3E0  57 C0 08 3C */	slwi r0, r30, 1
/* 8052E3E4  38 A0 00 00 */	li r5, 0
/* 8052E3E8  7C 86 02 AE */	lhax r4, r6, r0
lbl_8052E3EC:
/* 8052E3EC  7F A3 EB 78 */	mr r3, r29
/* 8052E3F0  4B FF E6 21 */	bl aNPC_Animation_init
/* 8052E3F4  9B DD 09 72 */	stb r30, 0x972(r29)
/* 8052E3F8  48 00 00 3C */	b lbl_8052E434
lbl_8052E3FC:
/* 8052E3FC  2C 03 00 00 */	cmpwi r3, 0
/* 8052E400  41 82 00 34 */	beq lbl_8052E434
/* 8052E404  54 64 08 3C */	slwi r4, r3, 1
/* 8052E408  80 7D 07 14 */	lwz r3, 0x714(r29)
/* 8052E40C  7C 06 22 AE */	lhax r0, r6, r4
/* 8052E410  7C 03 00 00 */	cmpw r3, r0
/* 8052E414  40 82 00 20 */	bne lbl_8052E434
/* 8052E418  80 1D 01 98 */	lwz r0, 0x198(r29)
/* 8052E41C  2C 00 00 01 */	cmpwi r0, 1
/* 8052E420  40 82 00 14 */	bne lbl_8052E434
/* 8052E424  7C 85 22 AE */	lhax r4, r5, r4
/* 8052E428  7F A3 EB 78 */	mr r3, r29
/* 8052E42C  38 A0 00 00 */	li r5, 0
/* 8052E430  4B FF E5 E1 */	bl aNPC_Animation_init
lbl_8052E434:
/* 8052E434  38 60 00 04 */	li r3, 4
/* 8052E438  38 80 00 00 */	li r4, 0
/* 8052E43C  38 A0 00 00 */	li r5, 0
/* 8052E440  4B E6 9F F9 */	bl mDemo_Set_OrderValue
/* 8052E444  39 61 00 20 */	addi r11, r1, 0x20
/* 8052E448  4B B6 CA D9 */	bl func_8009AF20
/* 8052E44C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052E450  7C 08 03 A6 */	mtlr r0
/* 8052E454  38 21 00 20 */	addi r1, r1, 0x20
/* 8052E458  4E 80 00 20 */	blr 
