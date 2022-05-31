lbl_805EF084:
/* 805EF084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EF088  7C 08 02 A6 */	mflr r0
/* 805EF08C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EF090  39 61 00 20 */	addi r11, r1, 0x20
/* 805EF094  4B AA BE 41 */	bl func_8009AED4
/* 805EF098  7C 9F 23 78 */	mr r31, r4
/* 805EF09C  7C 7E 1B 78 */	mr r30, r3
/* 805EF0A0  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805EF0A4  2C 00 00 00 */	cmpwi r0, 0
/* 805EF0A8  41 82 00 44 */	beq lbl_805EF0EC
/* 805EF0AC  1C 60 00 48 */	mulli r3, r0, 0x48
/* 805EF0B0  80 1F 00 08 */	lwz r0, 8(r31)
/* 805EF0B4  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF0B8  38 A3 00 54 */	addi r5, r3, 0x54
/* 805EF0BC  7C A4 2A 14 */	add r5, r4, r5
/* 805EF0C0  90 05 00 08 */	stw r0, 8(r5)
/* 805EF0C4  1C 60 00 48 */	mulli r3, r0, 0x48
/* 805EF0C8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 805EF0CC  38 63 00 54 */	addi r3, r3, 0x54
/* 805EF0D0  90 05 00 0C */	stw r0, 0xc(r5)
/* 805EF0D4  7C 64 1A 14 */	add r3, r4, r3
/* 805EF0D8  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 805EF0DC  90 05 00 10 */	stw r0, 0x10(r5)
/* 805EF0E0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805EF0E4  90 03 00 14 */	stw r0, 0x14(r3)
/* 805EF0E8  48 00 00 90 */	b lbl_805EF178
lbl_805EF0EC:
/* 805EF0EC  83 BE 00 2C */	lwz r29, 0x2c(r30)
/* 805EF0F0  80 1F 00 08 */	lwz r0, 8(r31)
/* 805EF0F4  90 1E 00 04 */	stw r0, 4(r30)
/* 805EF0F8  80 1E 00 04 */	lwz r0, 4(r30)
/* 805EF0FC  2C 00 00 00 */	cmpwi r0, 0
/* 805EF100  40 82 00 74 */	bne lbl_805EF174
/* 805EF104  48 00 00 30 */	b lbl_805EF134
lbl_805EF108:
/* 805EF108  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 805EF10C  7F C3 F3 78 */	mr r3, r30
/* 805EF110  38 04 FF FF */	addi r0, r4, -1
/* 805EF114  90 1D 00 30 */	stw r0, 0x30(r29)
/* 805EF118  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805EF11C  54 04 10 3A */	slwi r4, r0, 2
/* 805EF120  38 04 00 34 */	addi r0, r4, 0x34
/* 805EF124  7C 9D 00 2E */	lwzx r4, r29, r0
/* 805EF128  81 84 00 14 */	lwz r12, 0x14(r4)
/* 805EF12C  7D 89 03 A6 */	mtctr r12
/* 805EF130  4E 80 04 21 */	bctrl 
lbl_805EF134:
/* 805EF134  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805EF138  2C 00 00 00 */	cmpwi r0, 0
/* 805EF13C  40 82 FF CC */	bne lbl_805EF108
/* 805EF140  38 00 00 04 */	li r0, 4
/* 805EF144  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 805EF148  90 1E 00 0C */	stw r0, 0xc(r30)
/* 805EF14C  38 83 B5 4C */	addi r4, r3, none_proc1@l /* 0x803BB54C@l */
/* 805EF150  90 9E 00 30 */	stw r4, 0x30(r30)
/* 805EF154  80 1F 00 08 */	lwz r0, 8(r31)
/* 805EF158  90 1E 00 08 */	stw r0, 8(r30)
/* 805EF15C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805EF160  90 83 09 0C */	stw r4, 0x90c(r3)
/* 805EF164  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805EF168  90 83 09 10 */	stw r4, 0x910(r3)
/* 805EF16C  4B A5 BD E5 */	bl emu64_refresh
/* 805EF170  48 00 00 08 */	b lbl_805EF178
lbl_805EF174:
/* 805EF174  4B FF FB B5 */	bl mSM_set_before_menu_proc
lbl_805EF178:
/* 805EF178  38 00 00 00 */	li r0, 0
/* 805EF17C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 805EF180  90 1F 00 08 */	stw r0, 8(r31)
/* 805EF184  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805EF188  90 1F 00 04 */	stw r0, 4(r31)
/* 805EF18C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 805EF190  39 61 00 20 */	addi r11, r1, 0x20
/* 805EF194  4B AA BD 8D */	bl func_8009AF20
/* 805EF198  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EF19C  7C 08 03 A6 */	mtlr r0
/* 805EF1A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805EF1A4  4E 80 00 20 */	blr 
