lbl_804B0ED0:
/* 804B0ED0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B0ED4  7C 08 02 A6 */	mflr r0
/* 804B0ED8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B0EDC  39 61 00 40 */	addi r11, r1, 0x40
/* 804B0EE0  4B BE 9F F1 */	bl func_8009AED0
/* 804B0EE4  7C BE 2B 78 */	mr r30, r5
/* 804B0EE8  7C 7C 1B 78 */	mr r28, r3
/* 804B0EEC  80 A5 00 00 */	lwz r5, 0(r5)
/* 804B0EF0  7C 9D 23 78 */	mr r29, r4
/* 804B0EF4  80 DE 00 04 */	lwz r6, 4(r30)
/* 804B0EF8  38 61 00 14 */	addi r3, r1, 0x14
/* 804B0EFC  80 1E 00 08 */	lwz r0, 8(r30)
/* 804B0F00  38 81 00 10 */	addi r4, r1, 0x10
/* 804B0F04  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804B0F08  38 A1 00 18 */	addi r5, r1, 0x18
/* 804B0F0C  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 804B0F10  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B0F14  4B EF 44 55 */	bl mFI_Wpos2UtNum
/* 804B0F18  7C 7F 1B 78 */	mr r31, r3
/* 804B0F1C  7F C4 F3 78 */	mr r4, r30
/* 804B0F20  38 61 00 24 */	addi r3, r1, 0x24
/* 804B0F24  4B F0 9F 99 */	bl xyz_t_move
/* 804B0F28  2C 1F 00 00 */	cmpwi r31, 0
/* 804B0F2C  41 82 00 60 */	beq lbl_804B0F8C
/* 804B0F30  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 804B0F34  28 00 00 08 */	cmplwi r0, 8
/* 804B0F38  41 80 00 0C */	blt lbl_804B0F44
/* 804B0F3C  28 00 00 0A */	cmplwi r0, 0xa
/* 804B0F40  40 81 00 18 */	ble lbl_804B0F58
lbl_804B0F44:
/* 804B0F44  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 804B0F48  28 00 25 14 */	cmplwi r0, 0x2514
/* 804B0F4C  41 80 00 40 */	blt lbl_804B0F8C
/* 804B0F50  28 00 25 1B */	cmplwi r0, 0x251b
/* 804B0F54  41 81 00 38 */	bgt lbl_804B0F8C
lbl_804B0F58:
/* 804B0F58  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 804B0F5C  38 61 00 0C */	addi r3, r1, 0xc
/* 804B0F60  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 804B0F64  38 81 00 08 */	addi r4, r1, 8
/* 804B0F68  4B FF FF 35 */	bl bIT_actor_rand_pos_get_blk_correct
/* 804B0F6C  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 804B0F70  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804B0F74  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804B0F78  C0 01 00 08 */	lfs f0, 8(r1)
/* 804B0F7C  EC 43 10 2A */	fadds f2, f3, f2
/* 804B0F80  EC 01 00 2A */	fadds f0, f1, f0
/* 804B0F84  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 804B0F88  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804B0F8C:
/* 804B0F8C  7F A3 EB 78 */	mr r3, r29
/* 804B0F90  38 81 00 24 */	addi r4, r1, 0x24
/* 804B0F94  4B F0 9F 29 */	bl xyz_t_move
/* 804B0F98  39 61 00 40 */	addi r11, r1, 0x40
/* 804B0F9C  4B BE 9F 81 */	bl func_8009AF1C
/* 804B0FA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B0FA4  7C 08 03 A6 */	mtlr r0
/* 804B0FA8  38 21 00 40 */	addi r1, r1, 0x40
/* 804B0FAC  4E 80 00 20 */	blr 
