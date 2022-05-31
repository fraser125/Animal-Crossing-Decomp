lbl_805D5600:
/* 805D5600  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D5604  7C 08 02 A6 */	mflr r0
/* 805D5608  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D560C  39 61 00 20 */	addi r11, r1, 0x20
/* 805D5610  4B AC 58 C1 */	bl func_8009AED0
/* 805D5614  3C C0 80 65 */	lis r6, lit_1909@ha /* 0x8064B180@ha */
/* 805D5618  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805D561C  C0 26 B1 80 */	lfs f1, lit_1909@l(r6)  /* 0x8064B180@l */
/* 805D5620  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064B16C@ha */
/* 805D5624  3C C0 80 6D */	lis r6, data_806CBA10@ha /* 0x806CBA10@ha */
/* 805D5628  C0 63 B1 6C */	lfs f3, lit_605@l(r3)  /* 0x8064B16C@l */
/* 805D562C  FC 40 08 90 */	fmr f2, f1
/* 805D5630  83 C4 00 00 */	lwz r30, 0(r4)
/* 805D5634  83 A7 09 E0 */	lwz r29, 0x9e0(r7)
/* 805D5638  7C BC 2B 78 */	mr r28, r5
/* 805D563C  3B E6 BA 10 */	addi r31, r6, data_806CBA10@l /* 0x806CBA10@l */
/* 805D5640  38 60 00 00 */	li r3, 0
/* 805D5644  4B E3 6D A9 */	bl Matrix_scale
/* 805D5648  3C 60 80 65 */	lis r3, lit_1910@ha /* 0x8064B184@ha */
/* 805D564C  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 805D5650  C0 63 B1 84 */	lfs f3, lit_1910@l(r3)  /* 0x8064B184@l */
/* 805D5654  38 60 00 01 */	li r3, 1
/* 805D5658  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 805D565C  4B E3 6C A5 */	bl Matrix_translate
/* 805D5660  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805D5664  83 9E 02 D0 */	lwz r28, 0x2d0(r30)
/* 805D5668  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805D566C  7F C3 F3 78 */	mr r3, r30
/* 805D5670  90 1C 00 00 */	stw r0, 0(r28)
/* 805D5674  4B E3 7D 61 */	bl _Matrix_to_Mtx_new
/* 805D5678  90 7C 00 04 */	stw r3, 4(r28)
/* 805D567C  3C 00 DE 00 */	lis r0, 0xde00
/* 805D5680  3C 60 80 A5 */	lis r3, des_win_before@ha /* 0x80A52880@ha */
/* 805D5684  90 1C 00 08 */	stw r0, 8(r28)
/* 805D5688  38 03 28 80 */	addi r0, r3, des_win_before@l /* 0x80A52880@l */
/* 805D568C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 805D5690  88 1D 06 A7 */	lbz r0, 0x6a7(r29)
/* 805D5694  28 00 00 03 */	cmplwi r0, 3
/* 805D5698  40 82 01 20 */	bne lbl_805D57B8
/* 805D569C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805D56A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D56A4  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805D56A8  90 1C 00 10 */	stw r0, 0x10(r28)
/* 805D56AC  38 85 00 24 */	addi r4, r5, 0x24
/* 805D56B0  38 05 00 28 */	addi r0, r5, 0x28
/* 805D56B4  38 C3 85 38 */	addi r6, r3, common_data@l /* 0x81138538@l */
/* 805D56B8  80 7F 0C D8 */	lwz r3, 0xcd8(r31)
/* 805D56BC  90 7C 00 14 */	stw r3, 0x14(r28)
/* 805D56C0  90 9C 00 18 */	stw r4, 0x18(r28)
/* 805D56C4  80 7F 0C E4 */	lwz r3, 0xce4(r31)
/* 805D56C8  90 7C 00 1C */	stw r3, 0x1c(r28)
/* 805D56CC  90 1C 00 20 */	stw r0, 0x20(r28)
/* 805D56D0  80 1F 0C FC */	lwz r0, 0xcfc(r31)
/* 805D56D4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 805D56D8  80 06 00 14 */	lwz r0, 0x14(r6)
/* 805D56DC  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D56E0  41 82 00 1C */	beq lbl_805D56FC
/* 805D56E4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D56E8  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D56EC  80 63 00 00 */	lwz r3, 0(r3)
/* 805D56F0  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D56F4  2C 00 00 00 */	cmpwi r0, 0
/* 805D56F8  41 82 00 20 */	beq lbl_805D5718
lbl_805D56FC:
/* 805D56FC  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB06002C@ha */
/* 805D5700  38 03 00 2C */	addi r0, r3, 0x002C /* 0xDB06002C@l */
/* 805D5704  90 1C 00 28 */	stw r0, 0x28(r28)
/* 805D5708  80 1F 0D 20 */	lwz r0, 0xd20(r31)
/* 805D570C  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 805D5710  3B 9C 00 30 */	addi r28, r28, 0x30
/* 805D5714  48 00 00 18 */	b lbl_805D572C
lbl_805D5718:
/* 805D5718  38 05 00 2C */	addi r0, r5, 0x2c
/* 805D571C  90 1C 00 28 */	stw r0, 0x28(r28)
/* 805D5720  80 1F 0D 10 */	lwz r0, 0xd10(r31)
/* 805D5724  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 805D5728  3B 9C 00 30 */	addi r28, r28, 0x30
lbl_805D572C:
/* 805D572C  3C A0 DE 00 */	lis r5, 0xde00
/* 805D5730  3C 60 80 A5 */	lis r3, des_tool_pen_all_model@ha /* 0x80A4D9D0@ha */
/* 805D5734  90 BC 00 00 */	stw r5, 0(r28)
/* 805D5738  38 03 D9 D0 */	addi r0, r3, des_tool_pen_all_model@l /* 0x80A4D9D0@l */
/* 805D573C  3C 80 80 A5 */	lis r4, des_tool_nuri_all_model@ha /* 0x80A4D9F0@ha */
/* 805D5740  3C 60 80 A5 */	lis r3, des_tool_waku_all_model@ha /* 0x80A4DA28@ha */
/* 805D5744  90 1C 00 04 */	stw r0, 4(r28)
/* 805D5748  38 84 D9 F0 */	addi r4, r4, des_tool_nuri_all_model@l /* 0x80A4D9F0@l */
/* 805D574C  38 03 DA 28 */	addi r0, r3, des_tool_waku_all_model@l /* 0x80A4DA28@l */
/* 805D5750  90 BC 00 08 */	stw r5, 8(r28)
/* 805D5754  90 9C 00 0C */	stw r4, 0xc(r28)
/* 805D5758  90 BC 00 10 */	stw r5, 0x10(r28)
/* 805D575C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 805D5760  80 06 00 14 */	lwz r0, 0x14(r6)
/* 805D5764  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D5768  41 82 00 1C */	beq lbl_805D5784
/* 805D576C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D5770  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D5774  80 63 00 00 */	lwz r3, 0(r3)
/* 805D5778  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D577C  2C 00 00 00 */	cmpwi r0, 0
/* 805D5780  41 82 00 20 */	beq lbl_805D57A0
lbl_805D5784:
/* 805D5784  3C 00 DE 00 */	lis r0, 0xde00
/* 805D5788  3C 60 80 A5 */	lis r3, des_tool_kao_all_model@ha /* 0x80A4F150@ha */
/* 805D578C  90 1C 00 18 */	stw r0, 0x18(r28)
/* 805D5790  38 03 F1 50 */	addi r0, r3, des_tool_kao_all_model@l /* 0x80A4F150@l */
/* 805D5794  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 805D5798  3B 9C 00 20 */	addi r28, r28, 0x20
/* 805D579C  48 00 01 30 */	b lbl_805D58CC
lbl_805D57A0:
/* 805D57A0  3C 60 80 A5 */	lis r3, des_tool_mark_all_model@ha /* 0x80A4DA58@ha */
/* 805D57A4  90 BC 00 18 */	stw r5, 0x18(r28)
/* 805D57A8  38 03 DA 58 */	addi r0, r3, des_tool_mark_all_model@l /* 0x80A4DA58@l */
/* 805D57AC  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 805D57B0  3B 9C 00 20 */	addi r28, r28, 0x20
/* 805D57B4  48 00 01 18 */	b lbl_805D58CC
lbl_805D57B8:
/* 805D57B8  3D 20 DB 06 */	lis r9, 0xDB06 /* 0xDB060020@ha */
/* 805D57BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D57C0  38 09 00 20 */	addi r0, r9, 0x0020 /* 0xDB060020@l */
/* 805D57C4  38 FF 0C D8 */	addi r7, r31, 0xcd8
/* 805D57C8  90 1C 00 10 */	stw r0, 0x10(r28)
/* 805D57CC  38 C9 00 24 */	addi r6, r9, 0x24
/* 805D57D0  38 BF 0C E4 */	addi r5, r31, 0xce4
/* 805D57D4  38 09 00 28 */	addi r0, r9, 0x28
/* 805D57D8  89 1D 06 A0 */	lbz r8, 0x6a0(r29)
/* 805D57DC  38 9F 0C FC */	addi r4, r31, 0xcfc
/* 805D57E0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805D57E4  55 08 10 3A */	slwi r8, r8, 2
/* 805D57E8  7C E7 40 2E */	lwzx r7, r7, r8
/* 805D57EC  90 FC 00 14 */	stw r7, 0x14(r28)
/* 805D57F0  90 DC 00 18 */	stw r6, 0x18(r28)
/* 805D57F4  88 DD 06 A1 */	lbz r6, 0x6a1(r29)
/* 805D57F8  54 C6 10 3A */	slwi r6, r6, 2
/* 805D57FC  7C A5 30 2E */	lwzx r5, r5, r6
/* 805D5800  90 BC 00 1C */	stw r5, 0x1c(r28)
/* 805D5804  90 1C 00 20 */	stw r0, 0x20(r28)
/* 805D5808  88 1D 06 A2 */	lbz r0, 0x6a2(r29)
/* 805D580C  54 00 10 3A */	slwi r0, r0, 2
/* 805D5810  7C 04 00 2E */	lwzx r0, r4, r0
/* 805D5814  90 1C 00 24 */	stw r0, 0x24(r28)
/* 805D5818  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805D581C  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D5820  41 82 00 1C */	beq lbl_805D583C
/* 805D5824  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D5828  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D582C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D5830  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D5834  2C 00 00 00 */	cmpwi r0, 0
/* 805D5838  41 82 00 2C */	beq lbl_805D5864
lbl_805D583C:
/* 805D583C  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB06002C@ha */
/* 805D5840  38 7F 0D 20 */	addi r3, r31, 0xd20
/* 805D5844  38 04 00 2C */	addi r0, r4, 0x002C /* 0xDB06002C@l */
/* 805D5848  90 1C 00 28 */	stw r0, 0x28(r28)
/* 805D584C  88 1D 06 A3 */	lbz r0, 0x6a3(r29)
/* 805D5850  54 00 10 3A */	slwi r0, r0, 2
/* 805D5854  7C 03 00 2E */	lwzx r0, r3, r0
/* 805D5858  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 805D585C  3B 9C 00 30 */	addi r28, r28, 0x30
/* 805D5860  48 00 00 24 */	b lbl_805D5884
lbl_805D5864:
/* 805D5864  38 09 00 2C */	addi r0, r9, 0x2c
/* 805D5868  38 7F 0D 10 */	addi r3, r31, 0xd10
/* 805D586C  90 1C 00 28 */	stw r0, 0x28(r28)
/* 805D5870  88 1D 06 A3 */	lbz r0, 0x6a3(r29)
/* 805D5874  54 00 10 3A */	slwi r0, r0, 2
/* 805D5878  7C 03 00 2E */	lwzx r0, r3, r0
/* 805D587C  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 805D5880  3B 9C 00 30 */	addi r28, r28, 0x30
lbl_805D5884:
/* 805D5884  3C C0 DE 00 */	lis r6, 0xde00
/* 805D5888  3C 60 80 A5 */	lis r3, des_tool_pen1T_model@ha /* 0x80A4D3E0@ha */
/* 805D588C  90 DC 00 00 */	stw r6, 0(r28)
/* 805D5890  38 03 D3 E0 */	addi r0, r3, des_tool_pen1T_model@l /* 0x80A4D3E0@l */
/* 805D5894  3C A0 80 A5 */	lis r5, des_tool_nuriT_model@ha /* 0x80A4D4D0@ha */
/* 805D5898  3C 80 80 A5 */	lis r4, des_tool_waku1T_model@ha /* 0x80A4D6B0@ha */
/* 805D589C  90 1C 00 04 */	stw r0, 4(r28)
/* 805D58A0  3C 60 80 A5 */	lis r3, des_tool_mark1T_model@ha /* 0x80A4D840@ha */
/* 805D58A4  38 A5 D4 D0 */	addi r5, r5, des_tool_nuriT_model@l /* 0x80A4D4D0@l */
/* 805D58A8  38 84 D6 B0 */	addi r4, r4, des_tool_waku1T_model@l /* 0x80A4D6B0@l */
/* 805D58AC  90 DC 00 08 */	stw r6, 8(r28)
/* 805D58B0  38 03 D8 40 */	addi r0, r3, des_tool_mark1T_model@l /* 0x80A4D840@l */
/* 805D58B4  90 BC 00 0C */	stw r5, 0xc(r28)
/* 805D58B8  90 DC 00 10 */	stw r6, 0x10(r28)
/* 805D58BC  90 9C 00 14 */	stw r4, 0x14(r28)
/* 805D58C0  90 DC 00 18 */	stw r6, 0x18(r28)
/* 805D58C4  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 805D58C8  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_805D58CC:
/* 805D58CC  7F 84 E3 78 */	mr r4, r28
/* 805D58D0  3C 00 DE 00 */	lis r0, 0xde00
/* 805D58D4  3C 60 80 A5 */	lis r3, des_tool_undoT_model@ha /* 0x80A4D980@ha */
/* 805D58D8  90 1C 00 00 */	stw r0, 0(r28)
/* 805D58DC  38 03 D9 80 */	addi r0, r3, des_tool_undoT_model@l /* 0x80A4D980@l */
/* 805D58E0  3B 9C 00 08 */	addi r28, r28, 8
/* 805D58E4  90 04 00 04 */	stw r0, 4(r4)
/* 805D58E8  93 9E 02 D0 */	stw r28, 0x2d0(r30)
/* 805D58EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805D58F0  4B AC 56 2D */	bl func_8009AF1C
/* 805D58F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D58F8  7C 08 03 A6 */	mtlr r0
/* 805D58FC  38 21 00 20 */	addi r1, r1, 0x20
/* 805D5900  4E 80 00 20 */	blr 
