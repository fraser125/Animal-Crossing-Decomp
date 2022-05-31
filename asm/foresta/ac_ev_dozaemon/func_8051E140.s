lbl_8051E140:
/* 8051E140  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051E144  7C 08 02 A6 */	mflr r0
/* 8051E148  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051E14C  39 61 00 30 */	addi r11, r1, 0x30
/* 8051E150  4B B7 CD 81 */	bl func_8009AED0
/* 8051E154  7C 7D 1B 78 */	mr r29, r3
/* 8051E158  7C 9C 23 78 */	mr r28, r4
/* 8051E15C  38 60 00 44 */	li r3, 0x44
/* 8051E160  38 80 00 0D */	li r4, 0xd
/* 8051E164  4B E7 FC 69 */	bl mEv_get_save_area
/* 8051E168  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051E16C  7C 7F 1B 78 */	mr r31, r3
/* 8051E170  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051E174  7F A3 EB 78 */	mr r3, r29
/* 8051E178  3F C4 00 02 */	addis r30, r4, 2
/* 8051E17C  7F 84 E3 78 */	mr r4, r28
/* 8051E180  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8051E184  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8051E188  7D 89 03 A6 */	mtctr r12
/* 8051E18C  4E 80 04 21 */	bctrl 
/* 8051E190  2C 03 00 01 */	cmpwi r3, 1
/* 8051E194  40 82 01 30 */	bne lbl_8051E2C4
/* 8051E198  3C 80 80 52 */	lis r4, aEDZ_schedule_proc@ha /* 0x8051EFE4@ha */
/* 8051E19C  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A052C@ha */
/* 8051E1A0  38 04 EF E4 */	addi r0, r4, aEDZ_schedule_proc@l /* 0x8051EFE4@l */
/* 8051E1A4  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8051E1A8  38 A3 05 2C */	addi r5, r3, ct_data@l /* 0x806A052C@l */
/* 8051E1AC  7F A3 EB 78 */	mr r3, r29
/* 8051E1B0  7F 84 E3 78 */	mr r4, r28
/* 8051E1B4  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8051E1B8  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8051E1BC  7D 89 03 A6 */	mtctr r12
/* 8051E1C0  4E 80 04 21 */	bctrl 
/* 8051E1C4  38 00 FF FF */	li r0, -1
/* 8051E1C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051E1CC  90 1D 08 F4 */	stw r0, 0x8f4(r29)
/* 8051E1D0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8051E1D4  38 00 00 00 */	li r0, 0
/* 8051E1D8  38 61 00 08 */	addi r3, r1, 8
/* 8051E1DC  98 1D 09 A6 */	stb r0, 0x9a6(r29)
/* 8051E1E0  3C 84 00 03 */	addis r4, r4, 3
/* 8051E1E4  98 1D 09 A7 */	stb r0, 0x9a7(r29)
/* 8051E1E8  88 04 88 7F */	lbz r0, -0x7781(r4)
/* 8051E1EC  60 00 00 10 */	ori r0, r0, 0x10
/* 8051E1F0  98 04 88 7F */	stb r0, -0x7781(r4)
/* 8051E1F4  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 8051E1F8  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8051E1FC  90 81 00 08 */	stw r4, 8(r1)
/* 8051E200  90 01 00 0C */	stw r0, 0xc(r1)
/* 8051E204  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8051E208  90 01 00 10 */	stw r0, 0x10(r1)
/* 8051E20C  4B E7 20 39 */	bl mCoBG_Wpos2BgAttribute_Original
/* 8051E210  3C 80 80 65 */	lis r4, data_806490EC@ha /* 0x806490EC@ha */
/* 8051E214  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 8051E218  C0 04 90 EC */	lfs f0, data_806490EC@l(r4)  /* 0x806490EC@l */
/* 8051E21C  28 03 00 19 */	cmplwi r3, 0x19
/* 8051E220  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 8051E224  EC 42 00 28 */	fsubs f2, f2, f0
/* 8051E228  40 82 00 0C */	bne lbl_8051E234
/* 8051E22C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8051E230  48 00 00 10 */	b lbl_8051E240
lbl_8051E234:
/* 8051E234  28 03 00 1A */	cmplwi r3, 0x1a
/* 8051E238  40 82 00 08 */	bne lbl_8051E240
/* 8051E23C  EC 21 00 2A */	fadds f1, f1, f0
lbl_8051E240:
/* 8051E240  80 9E 60 4C */	lwz r4, 0x604c(r30)
/* 8051E244  7F A3 EB 78 */	mr r3, r29
/* 8051E248  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 8051E24C  7D 89 03 A6 */	mtctr r12
/* 8051E250  4E 80 04 21 */	bctrl 
/* 8051E254  A8 1D 09 24 */	lha r0, 0x924(r29)
/* 8051E258  28 1F 00 00 */	cmplwi r31, 0
/* 8051E25C  B0 1D 00 DE */	sth r0, 0xde(r29)
/* 8051E260  A8 1D 09 24 */	lha r0, 0x924(r29)
/* 8051E264  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 8051E268  40 82 00 1C */	bne lbl_8051E284
/* 8051E26C  38 60 00 44 */	li r3, 0x44
/* 8051E270  38 80 00 0D */	li r4, 0xd
/* 8051E274  4B E7 F9 B1 */	bl mEv_reserve_save_area
/* 8051E278  38 00 00 00 */	li r0, 0
/* 8051E27C  B0 03 00 00 */	sth r0, 0(r3)
/* 8051E280  48 00 00 18 */	b lbl_8051E298
lbl_8051E284:
/* 8051E284  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8051E288  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8051E28C  41 82 00 0C */	beq lbl_8051E298
/* 8051E290  7F A3 EB 78 */	mr r3, r29
/* 8051E294  4B E5 61 AD */	bl Actor_delete
lbl_8051E298:
/* 8051E298  80 1D 01 64 */	lwz r0, 0x164(r29)
/* 8051E29C  28 00 00 00 */	cmplwi r0, 0
/* 8051E2A0  41 82 00 24 */	beq lbl_8051E2C4
/* 8051E2A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051E2A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051E2AC  3C 63 00 02 */	addis r3, r3, 2
/* 8051E2B0  88 03 06 87 */	lbz r0, 0x687(r3)
/* 8051E2B4  28 00 00 01 */	cmplwi r0, 1
/* 8051E2B8  40 82 00 0C */	bne lbl_8051E2C4
/* 8051E2BC  7F A3 EB 78 */	mr r3, r29
/* 8051E2C0  4B E5 61 81 */	bl Actor_delete
lbl_8051E2C4:
/* 8051E2C4  39 61 00 30 */	addi r11, r1, 0x30
/* 8051E2C8  4B B7 CC 55 */	bl func_8009AF1C
/* 8051E2CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051E2D0  7C 08 03 A6 */	mtlr r0
/* 8051E2D4  38 21 00 30 */	addi r1, r1, 0x30
/* 8051E2D8  4E 80 00 20 */	blr 
