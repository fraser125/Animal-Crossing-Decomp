lbl_805D5288:
/* 805D5288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D528C  7C 08 02 A6 */	mflr r0
/* 805D5290  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D5294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D5298  93 C1 00 08 */	stw r30, 8(r1)
/* 805D529C  7C 9E 23 78 */	mr r30, r4
/* 805D52A0  80 03 00 08 */	lwz r0, 8(r3)
/* 805D52A4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805D52A8  2C 00 00 19 */	cmpwi r0, 0x19
/* 805D52AC  80 04 09 28 */	lwz r0, 0x928(r4)
/* 805D52B0  83 E4 09 E0 */	lwz r31, 0x9e0(r4)
/* 805D52B4  40 82 01 38 */	bne lbl_805D53EC
/* 805D52B8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 805D52BC  41 82 00 48 */	beq lbl_805D5304
/* 805D52C0  38 00 00 00 */	li r0, 0
/* 805D52C4  38 80 00 0F */	li r4, 0xf
/* 805D52C8  98 1F 06 98 */	stb r0, 0x698(r31)
/* 805D52CC  38 A0 00 04 */	li r5, 4
/* 805D52D0  38 C0 00 00 */	li r6, 0
/* 805D52D4  90 1F 06 80 */	stw r0, 0x680(r31)
/* 805D52D8  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D52DC  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805D52E0  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 805D52E4  98 1F 06 CC */	stb r0, 0x6cc(r31)
/* 805D52E8  98 1F 06 CD */	stb r0, 0x6cd(r31)
/* 805D52EC  4B E1 A3 F1 */	bl mSM_open_submenu
/* 805D52F0  38 00 00 02 */	li r0, 2
/* 805D52F4  38 60 00 02 */	li r3, 2
/* 805D52F8  90 1E 00 04 */	stw r0, 4(r30)
/* 805D52FC  48 05 8A 09 */	bl sAdo_SysTrgStart
/* 805D5300  48 00 00 EC */	b lbl_805D53EC
lbl_805D5304:
/* 805D5304  38 60 00 10 */	li r3, 0x10
/* 805D5308  4B DC 0C 09 */	bl chkTrigger
/* 805D530C  2C 03 00 00 */	cmpwi r3, 0
/* 805D5310  41 82 00 38 */	beq lbl_805D5348
/* 805D5314  88 1F 06 A5 */	lbz r0, 0x6a5(r31)
/* 805D5318  28 00 00 00 */	cmplwi r0, 0
/* 805D531C  41 82 00 08 */	beq lbl_805D5324
/* 805D5320  98 1F 06 A4 */	stb r0, 0x6a4(r31)
lbl_805D5324:
/* 805D5324  38 60 00 37 */	li r3, 0x37
/* 805D5328  48 05 89 DD */	bl sAdo_SysTrgStart
/* 805D532C  7F E3 FB 78 */	mr r3, r31
/* 805D5330  4B FF FE B5 */	bl mDE_move_tool_decide
/* 805D5334  88 9F 06 A7 */	lbz r4, 0x6a7(r31)
/* 805D5338  7F E3 FB 78 */	mr r3, r31
/* 805D533C  38 84 00 01 */	addi r4, r4, 1
/* 805D5340  4B FF FE 25 */	bl mDE_setup_action
/* 805D5344  48 00 00 A8 */	b lbl_805D53EC
lbl_805D5348:
/* 805D5348  38 60 00 20 */	li r3, 0x20
/* 805D534C  4B DC 0B C5 */	bl chkTrigger
/* 805D5350  2C 03 00 00 */	cmpwi r3, 0
/* 805D5354  41 82 00 38 */	beq lbl_805D538C
/* 805D5358  88 1F 06 A5 */	lbz r0, 0x6a5(r31)
/* 805D535C  28 00 00 00 */	cmplwi r0, 0
/* 805D5360  41 82 00 08 */	beq lbl_805D5368
/* 805D5364  98 1F 06 A4 */	stb r0, 0x6a4(r31)
lbl_805D5368:
/* 805D5368  38 60 00 37 */	li r3, 0x37
/* 805D536C  48 05 89 99 */	bl sAdo_SysTrgStart
/* 805D5370  7F E3 FB 78 */	mr r3, r31
/* 805D5374  4B FF FE 71 */	bl mDE_move_tool_decide
/* 805D5378  88 9F 06 A7 */	lbz r4, 0x6a7(r31)
/* 805D537C  7F E3 FB 78 */	mr r3, r31
/* 805D5380  38 84 FF FF */	addi r4, r4, -1
/* 805D5384  4B FF FD E1 */	bl mDE_setup_action
/* 805D5388  48 00 00 64 */	b lbl_805D53EC
lbl_805D538C:
/* 805D538C  81 9F 06 AC */	lwz r12, 0x6ac(r31)
/* 805D5390  7F E3 FB 78 */	mr r3, r31
/* 805D5394  7D 89 03 A6 */	mtctr r12
/* 805D5398  4E 80 04 21 */	bctrl 
/* 805D539C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D53A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805D53A4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805D53A8  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D53AC  41 82 00 1C */	beq lbl_805D53C8
/* 805D53B0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D53B4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D53B8  80 63 00 00 */	lwz r3, 0(r3)
/* 805D53BC  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D53C0  2C 00 00 00 */	cmpwi r0, 0
/* 805D53C4  41 82 00 0C */	beq lbl_805D53D0
lbl_805D53C8:
/* 805D53C8  7F E3 FB 78 */	mr r3, r31
/* 805D53CC  4B FF D1 FD */	bl mDE_mask_cat_mask
lbl_805D53D0:
/* 805D53D0  38 7F 02 20 */	addi r3, r31, 0x220
/* 805D53D4  38 9F 00 20 */	addi r4, r31, 0x20
/* 805D53D8  38 A0 02 00 */	li r5, 0x200
/* 805D53DC  4B A8 7C 41 */	bl func_8005D01C
/* 805D53E0  38 7F 00 20 */	addi r3, r31, 0x20
/* 805D53E4  38 80 02 00 */	li r4, 0x200
/* 805D53E8  4B A8 7D 35 */	bl osWritebackDCache
lbl_805D53EC:
/* 805D53EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D53F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D53F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D53F8  7C 08 03 A6 */	mtlr r0
/* 805D53FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805D5400  4E 80 00 20 */	blr 
