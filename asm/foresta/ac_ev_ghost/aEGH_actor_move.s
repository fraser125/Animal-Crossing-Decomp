lbl_8051F384:
/* 8051F384  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051F388  7C 08 02 A6 */	mflr r0
/* 8051F38C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051F390  39 61 00 20 */	addi r11, r1, 0x20
/* 8051F394  4B B7 BB 41 */	bl func_8009AED4
/* 8051F398  7C 7F 1B 78 */	mr r31, r3
/* 8051F39C  7C 9D 23 78 */	mr r29, r4
/* 8051F3A0  38 60 00 01 */	li r3, 1
/* 8051F3A4  48 00 0F F5 */	bl aEGH_bitcheck_func
/* 8051F3A8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8051F3AC  41 82 00 10 */	beq lbl_8051F3BC
/* 8051F3B0  38 00 00 01 */	li r0, 1
/* 8051F3B4  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 8051F3B8  48 00 00 0C */	b lbl_8051F3C4
lbl_8051F3BC:
/* 8051F3BC  38 00 00 00 */	li r0, 0
/* 8051F3C0  B0 1F 00 24 */	sth r0, 0x24(r31)
lbl_8051F3C4:
/* 8051F3C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051F3C8  7F E3 FB 78 */	mr r3, r31
/* 8051F3CC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8051F3D0  7F A4 EB 78 */	mr r4, r29
/* 8051F3D4  3F C5 00 02 */	addis r30, r5, 2
/* 8051F3D8  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8051F3DC  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8051F3E0  7D 89 03 A6 */	mtctr r12
/* 8051F3E4  4E 80 04 21 */	bctrl 
/* 8051F3E8  7F E3 FB 78 */	mr r3, r31
/* 8051F3EC  7F A4 EB 78 */	mr r4, r29
/* 8051F3F0  48 00 11 01 */	bl aEGH_byebye_check
/* 8051F3F4  88 1F 07 DC */	lbz r0, 0x7dc(r31)
/* 8051F3F8  28 00 00 05 */	cmplwi r0, 5
/* 8051F3FC  40 82 00 3C */	bne lbl_8051F438
/* 8051F400  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 8051F404  28 00 00 06 */	cmplwi r0, 6
/* 8051F408  41 82 00 30 */	beq lbl_8051F438
/* 8051F40C  38 00 00 01 */	li r0, 1
/* 8051F410  7F E3 FB 78 */	mr r3, r31
/* 8051F414  98 1F 09 AC */	stb r0, 0x9ac(r31)
/* 8051F418  7F A4 EB 78 */	mr r4, r29
/* 8051F41C  38 A0 00 06 */	li r5, 6
/* 8051F420  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8051F424  81 86 01 18 */	lwz r12, 0x118(r6)
/* 8051F428  7D 89 03 A6 */	mtctr r12
/* 8051F42C  4E 80 04 21 */	bctrl 
/* 8051F430  38 00 00 FF */	li r0, 0xff
/* 8051F434  98 1F 00 D6 */	stb r0, 0xd6(r31)
lbl_8051F438:
/* 8051F438  8B DF 09 A9 */	lbz r30, 0x9a9(r31)
/* 8051F43C  38 60 00 01 */	li r3, 1
/* 8051F440  48 00 0F 59 */	bl aEGH_bitcheck_func
/* 8051F444  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8051F448  41 82 00 A8 */	beq lbl_8051F4F0
/* 8051F44C  3B A0 00 01 */	li r29, 1
/* 8051F450  4B E7 8F A9 */	bl mDemo_Get_talk_actor
/* 8051F454  7C 03 F8 40 */	cmplw r3, r31
/* 8051F458  40 82 00 20 */	bne lbl_8051F478
/* 8051F45C  3C 60 80 65 */	lis r3, lit_559@ha /* 0x80649100@ha */
/* 8051F460  38 00 00 00 */	li r0, 0
/* 8051F464  98 1F 07 52 */	stb r0, 0x752(r31)
/* 8051F468  38 80 00 BE */	li r4, 0xbe
/* 8051F46C  C0 03 91 00 */	lfs f0, lit_559@l(r3)  /* 0x80649100@l */
/* 8051F470  D0 1F 07 64 */	stfs f0, 0x764(r31)
/* 8051F474  48 00 00 44 */	b lbl_8051F4B8
lbl_8051F478:
/* 8051F478  3C 60 80 65 */	lis r3, lit_560@ha /* 0x80649104@ha */
/* 8051F47C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8051F480  C0 03 91 04 */	lfs f0, lit_560@l(r3)  /* 0x80649104@l */
/* 8051F484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051F488  40 81 00 0C */	ble lbl_8051F494
/* 8051F48C  38 80 00 50 */	li r4, 0x50
/* 8051F490  48 00 00 08 */	b lbl_8051F498
lbl_8051F494:
/* 8051F494  38 80 00 8C */	li r4, 0x8c
lbl_8051F498:
/* 8051F498  2C 1E 00 8C */	cmpwi r30, 0x8c
/* 8051F49C  41 81 00 08 */	bgt lbl_8051F4A4
/* 8051F4A0  3B A0 00 01 */	li r29, 1
lbl_8051F4A4:
/* 8051F4A4  3C 60 80 65 */	lis r3, lit_561@ha /* 0x80649108@ha */
/* 8051F4A8  38 00 00 01 */	li r0, 1
/* 8051F4AC  98 1F 07 52 */	stb r0, 0x752(r31)
/* 8051F4B0  C0 03 91 08 */	lfs f0, lit_561@l(r3)  /* 0x80649108@l */
/* 8051F4B4  D0 1F 07 64 */	stfs f0, 0x764(r31)
lbl_8051F4B8:
/* 8051F4B8  7C A4 F0 50 */	subf r5, r4, r30
/* 8051F4BC  7C A3 FE 70 */	srawi r3, r5, 0x1f
/* 8051F4C0  7C 60 2A 78 */	xor r0, r3, r5
/* 8051F4C4  7C 03 00 50 */	subf r0, r3, r0
/* 8051F4C8  7C 00 E8 00 */	cmpw r0, r29
/* 8051F4CC  40 80 00 0C */	bge lbl_8051F4D8
/* 8051F4D0  7C 9E 23 78 */	mr r30, r4
/* 8051F4D4  48 00 00 40 */	b lbl_8051F514
lbl_8051F4D8:
/* 8051F4D8  2C 05 00 00 */	cmpwi r5, 0
/* 8051F4DC  40 80 00 0C */	bge lbl_8051F4E8
/* 8051F4E0  7F DE EA 14 */	add r30, r30, r29
/* 8051F4E4  48 00 00 30 */	b lbl_8051F514
lbl_8051F4E8:
/* 8051F4E8  7F DD F0 50 */	subf r30, r29, r30
/* 8051F4EC  48 00 00 28 */	b lbl_8051F514
lbl_8051F4F0:
/* 8051F4F0  88 7F 09 A2 */	lbz r3, 0x9a2(r31)
/* 8051F4F4  28 03 00 00 */	cmplwi r3, 0
/* 8051F4F8  41 82 00 10 */	beq lbl_8051F508
/* 8051F4FC  38 03 FF FF */	addi r0, r3, -1
/* 8051F500  98 1F 09 A2 */	stb r0, 0x9a2(r31)
/* 8051F504  48 00 00 10 */	b lbl_8051F514
lbl_8051F508:
/* 8051F508  37 DE FF FC */	addic. r30, r30, -4
/* 8051F50C  40 80 00 08 */	bge lbl_8051F514
/* 8051F510  3B C0 00 00 */	li r30, 0
lbl_8051F514:
/* 8051F514  9B DF 09 A9 */	stb r30, 0x9a9(r31)
/* 8051F518  38 00 00 00 */	li r0, 0
/* 8051F51C  39 61 00 20 */	addi r11, r1, 0x20
/* 8051F520  98 1F 01 08 */	stb r0, 0x108(r31)
/* 8051F524  4B B7 B9 FD */	bl func_8009AF20
/* 8051F528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051F52C  7C 08 03 A6 */	mtlr r0
/* 8051F530  38 21 00 20 */	addi r1, r1, 0x20
/* 8051F534  4E 80 00 20 */	blr 
