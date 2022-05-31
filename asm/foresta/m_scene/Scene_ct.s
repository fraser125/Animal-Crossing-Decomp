lbl_803F0DB4:
/* 803F0DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F0DB8  7C 08 02 A6 */	mflr r0
/* 803F0DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F0DC0  39 61 00 20 */	addi r11, r1, 0x20
/* 803F0DC4  4B CA A1 11 */	bl func_8009AED4
/* 803F0DC8  3C A0 80 66 */	lis r5, data_8065DD80@ha /* 0x8065DD80@ha */
/* 803F0DCC  7C 7D 1B 78 */	mr r29, r3
/* 803F0DD0  7C 9E 23 78 */	mr r30, r4
/* 803F0DD4  3B E5 DD 80 */	addi r31, r5, data_8065DD80@l /* 0x8065DD80@l */
lbl_803F0DD8:
/* 803F0DD8  88 1E 00 00 */	lbz r0, 0(r30)
/* 803F0DDC  28 00 00 0A */	cmplwi r0, 0xa
/* 803F0DE0  41 82 00 2C */	beq lbl_803F0E0C
/* 803F0DE4  28 00 00 0B */	cmplwi r0, 0xb
/* 803F0DE8  40 80 00 1C */	bge lbl_803F0E04
/* 803F0DEC  54 00 10 3A */	slwi r0, r0, 2
/* 803F0DF0  7F A3 EB 78 */	mr r3, r29
/* 803F0DF4  7D 9F 00 2E */	lwzx r12, r31, r0
/* 803F0DF8  7F C4 F3 78 */	mr r4, r30
/* 803F0DFC  7D 89 03 A6 */	mtctr r12
/* 803F0E00  4E 80 04 21 */	bctrl 
lbl_803F0E04:
/* 803F0E04  3B DE 00 08 */	addi r30, r30, 8
/* 803F0E08  4B FF FF D0 */	b lbl_803F0DD8
lbl_803F0E0C:
/* 803F0E0C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D01F@ha */
/* 803F0E10  38 60 00 1B */	li r3, 0x1b
/* 803F0E14  38 84 D0 1F */	addi r4, r4, 0xD01F /* 0x0000D01F@l */
/* 803F0E18  4B FF FD 8D */	bl Scene_player_select
/* 803F0E1C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D06A@ha */
/* 803F0E20  38 60 00 22 */	li r3, 0x22
/* 803F0E24  38 84 D0 6A */	addi r4, r4, 0xD06A /* 0x0000D06A@l */
/* 803F0E28  4B FF FD 7D */	bl Scene_player_select
/* 803F0E2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0E30  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F0E34  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803F0E38  2C 00 00 31 */	cmpwi r0, 0x31
/* 803F0E3C  40 82 01 28 */	bne lbl_803F0F64
/* 803F0E40  3F E3 00 02 */	addis r31, r3, 2
/* 803F0E44  3C A3 00 03 */	addis r5, r3, 3
/* 803F0E48  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 803F0E4C  3B C0 00 00 */	li r30, 0
/* 803F0E50  A0 C5 DB 50 */	lhz r6, -0x24b0(r5)
/* 803F0E54  38 A5 DB 46 */	addi r5, r5, -9402
/* 803F0E58  A0 83 00 12 */	lhz r4, 0x12(r3)
/* 803F0E5C  38 63 00 08 */	addi r3, r3, 8
/* 803F0E60  4B FC 2A 19 */	bl mLd_CheckCmpLand
/* 803F0E64  2C 03 00 01 */	cmpwi r3, 1
/* 803F0E68  40 82 00 64 */	bne lbl_803F0ECC
/* 803F0E6C  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 803F0E70  80 64 23 48 */	lwz r3, 0x2348(r4)
/* 803F0E74  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 803F0E78  41 82 00 14 */	beq lbl_803F0E8C
/* 803F0E7C  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 803F0E80  3B C0 00 01 */	li r30, 1
/* 803F0E84  90 04 23 48 */	stw r0, 0x2348(r4)
/* 803F0E88  48 00 00 48 */	b lbl_803F0ED0
lbl_803F0E8C:
/* 803F0E8C  4B C6 BE 69 */	bl fqrand
/* 803F0E90  3C 60 80 64 */	lis r3, lit_659@ha /* 0x8064321C@ha */
/* 803F0E94  C0 03 32 1C */	lfs f0, lit_659@l(r3)  /* 0x8064321C@l */
/* 803F0E98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F0E9C  40 80 00 18 */	bge lbl_803F0EB4
/* 803F0EA0  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 803F0EA4  80 03 23 48 */	lwz r0, 0x2348(r3)
/* 803F0EA8  60 00 00 01 */	ori r0, r0, 1
/* 803F0EAC  90 03 23 48 */	stw r0, 0x2348(r3)
/* 803F0EB0  48 00 00 20 */	b lbl_803F0ED0
lbl_803F0EB4:
/* 803F0EB4  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 803F0EB8  3B C0 00 01 */	li r30, 1
/* 803F0EBC  80 03 23 48 */	lwz r0, 0x2348(r3)
/* 803F0EC0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 803F0EC4  90 03 23 48 */	stw r0, 0x2348(r3)
/* 803F0EC8  48 00 00 08 */	b lbl_803F0ED0
lbl_803F0ECC:
/* 803F0ECC  3B C0 00 01 */	li r30, 1
lbl_803F0ED0:
/* 803F0ED0  2C 1E 00 00 */	cmpwi r30, 0
/* 803F0ED4  40 82 00 7C */	bne lbl_803F0F50
/* 803F0ED8  38 81 00 08 */	addi r4, r1, 8
/* 803F0EDC  38 60 00 00 */	li r3, 0
/* 803F0EE0  38 A0 00 01 */	li r5, 1
/* 803F0EE4  38 C0 00 00 */	li r6, 0
/* 803F0EE8  38 E0 00 00 */	li r7, 0
/* 803F0EEC  39 00 00 02 */	li r8, 2
/* 803F0EF0  39 20 00 08 */	li r9, 8
/* 803F0EF4  39 40 00 00 */	li r10, 0
/* 803F0EF8  4B FF 74 E5 */	bl mSP_SelectRandomItem_New
/* 803F0EFC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D076@ha */
/* 803F0F00  A0 A1 00 08 */	lhz r5, 8(r1)
/* 803F0F04  38 63 D0 76 */	addi r3, r3, 0xD076 /* 0x0000D076@l */
/* 803F0F08  7C 64 1B 78 */	mr r4, r3
/* 803F0F0C  4B FD DD 51 */	bl mNpc_RegistMaskNpc
/* 803F0F10  A0 A1 00 08 */	lhz r5, 8(r1)
/* 803F0F14  38 00 00 00 */	li r0, 0
/* 803F0F18  28 05 24 00 */	cmplwi r5, 0x2400
/* 803F0F1C  41 80 00 10 */	blt lbl_803F0F2C
/* 803F0F20  28 05 24 FF */	cmplwi r5, 0x24ff
/* 803F0F24  40 80 00 08 */	bge lbl_803F0F2C
/* 803F0F28  38 00 00 01 */	li r0, 1
lbl_803F0F2C:
/* 803F0F2C  20 80 00 00 */	subfic r4, r0, 0
/* 803F0F30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0F34  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F0F38  38 05 DC 00 */	addi r0, r5, -9216
/* 803F0F3C  7C 84 21 10 */	subfe r4, r4, r4
/* 803F0F40  7C 00 20 38 */	and r0, r0, r4
/* 803F0F44  3C 63 00 02 */	addis r3, r3, 2
/* 803F0F48  98 03 41 41 */	stb r0, 0x4141(r3)
/* 803F0F4C  48 00 00 18 */	b lbl_803F0F64
lbl_803F0F50:
/* 803F0F50  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D076@ha */
/* 803F0F54  38 A0 00 00 */	li r5, 0
/* 803F0F58  38 64 D0 76 */	addi r3, r4, 0xD076 /* 0x0000D076@l */
/* 803F0F5C  38 84 D0 04 */	addi r4, r4, -12284
/* 803F0F60  4B FD DC FD */	bl mNpc_RegistMaskNpc
lbl_803F0F64:
/* 803F0F64  39 61 00 20 */	addi r11, r1, 0x20
/* 803F0F68  4B CA 9F B9 */	bl func_8009AF20
/* 803F0F6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F0F70  7C 08 03 A6 */	mtlr r0
/* 803F0F74  38 21 00 20 */	addi r1, r1, 0x20
/* 803F0F78  4E 80 00 20 */	blr 
