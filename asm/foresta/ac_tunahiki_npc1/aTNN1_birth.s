lbl_8058F9B4:
/* 8058F9B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058F9B8  7C 08 02 A6 */	mflr r0
/* 8058F9BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058F9C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8058F9C4  4B B0 B5 11 */	bl func_8009AED4
/* 8058F9C8  7C 7D 1B 78 */	mr r29, r3
/* 8058F9CC  7C 9E 23 78 */	mr r30, r4
/* 8058F9D0  38 60 00 0E */	li r3, 0xe
/* 8058F9D4  38 80 00 09 */	li r4, 9
/* 8058F9D8  4B E0 E3 F5 */	bl mEv_get_save_area
/* 8058F9DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058F9E0  41 82 00 38 */	beq lbl_8058FA18
/* 8058F9E4  A8 1F 00 10 */	lha r0, 0x10(r31)
/* 8058F9E8  2C 00 00 01 */	cmpwi r0, 1
/* 8058F9EC  40 82 00 2C */	bne lbl_8058FA18
/* 8058F9F0  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 8058F9F4  7F A3 EB 78 */	mr r3, r29
/* 8058F9F8  7F C4 F3 78 */	mr r4, r30
/* 8058F9FC  38 A0 00 01 */	li r5, 1
/* 8058FA00  60 00 00 10 */	ori r0, r0, 0x10
/* 8058FA04  90 1D 00 20 */	stw r0, 0x20(r29)
/* 8058FA08  48 00 03 D9 */	bl aTNN1_setup_think_proc
/* 8058FA0C  3C 60 80 65 */	lis r3, data_80649BFC@ha /* 0x80649BFC@ha */
/* 8058FA10  C0 03 9B FC */	lfs f0, data_80649BFC@l(r3)  /* 0x80649BFC@l */
/* 8058FA14  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8058FA18:
/* 8058FA18  39 61 00 20 */	addi r11, r1, 0x20
/* 8058FA1C  4B B0 B5 05 */	bl func_8009AF20
/* 8058FA20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058FA24  7C 08 03 A6 */	mtlr r0
/* 8058FA28  38 21 00 20 */	addi r1, r1, 0x20
/* 8058FA2C  4E 80 00 20 */	blr 
