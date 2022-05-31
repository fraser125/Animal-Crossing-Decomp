lbl_8061D3EC:
/* 8061D3EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061D3F0  7C 08 02 A6 */	mflr r0
/* 8061D3F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061D3F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8061D3FC  4B A7 DA D9 */	bl func_8009AED4
/* 8061D400  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061D404  7C 66 1B 78 */	mr r6, r3
/* 8061D408  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8061D40C  7C 9D 23 78 */	mr r29, r4
/* 8061D410  3C 63 00 02 */	addis r3, r3, 2
/* 8061D414  A8 06 00 4C */	lha r0, 0x4c(r6)
/* 8061D418  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 8061D41C  7F A3 EB 78 */	mr r3, r29
/* 8061D420  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8061D424  38 86 00 10 */	addi r4, r6, 0x10
/* 8061D428  81 85 00 1C */	lwz r12, 0x1c(r5)
/* 8061D42C  38 A6 00 34 */	addi r5, r6, 0x34
/* 8061D430  38 C6 00 40 */	addi r6, r6, 0x40
/* 8061D434  83 DD 00 00 */	lwz r30, 0(r29)
/* 8061D438  7D 89 03 A6 */	mtctr r12
/* 8061D43C  4E 80 04 21 */	bctrl 
/* 8061D440  3C 80 80 CC */	lis r4, ef_siawase01_00_evw_anime@ha /* 0x80CBDF48@ha */
/* 8061D444  7F A3 EB 78 */	mr r3, r29
/* 8061D448  38 84 DF 48 */	addi r4, r4, ef_siawase01_00_evw_anime@l /* 0x80CBDF48@l */
/* 8061D44C  4B D5 61 11 */	bl Evw_Anime_Set
/* 8061D450  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 8061D454  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000032@ha */
/* 8061D458  67 E5 FF FF */	oris r5, r31, 0xffff
/* 8061D45C  3C 60 80 CC */	lis r3, ef_siawase01_00_modelT@ha /* 0x80CBE170@ha */
/* 8061D460  38 07 00 08 */	addi r0, r7, 8
/* 8061D464  38 C4 00 32 */	addi r6, r4, 0x0032 /* 0xFA000032@l */
/* 8061D468  90 1E 02 E0 */	stw r0, 0x2e0(r30)
/* 8061D46C  60 A5 C8 00 */	ori r5, r5, 0xc800
/* 8061D470  3C 80 DE 00 */	lis r4, 0xde00
/* 8061D474  38 03 E1 70 */	addi r0, r3, ef_siawase01_00_modelT@l /* 0x80CBE170@l */
/* 8061D478  90 C7 00 00 */	stw r6, 0(r7)
/* 8061D47C  90 A7 00 04 */	stw r5, 4(r7)
/* 8061D480  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8061D484  38 65 00 08 */	addi r3, r5, 8
/* 8061D488  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061D48C  90 85 00 00 */	stw r4, 0(r5)
/* 8061D490  90 05 00 04 */	stw r0, 4(r5)
/* 8061D494  39 61 00 20 */	addi r11, r1, 0x20
/* 8061D498  4B A7 DA 89 */	bl func_8009AF20
/* 8061D49C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061D4A0  7C 08 03 A6 */	mtlr r0
/* 8061D4A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8061D4A8  4E 80 00 20 */	blr 
