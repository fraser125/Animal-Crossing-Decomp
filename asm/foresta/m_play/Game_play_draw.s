lbl_8062B15C:
/* 8062B15C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062B160  7C 08 02 A6 */	mflr r0
/* 8062B164  38 80 00 00 */	li r4, 0
/* 8062B168  38 A0 00 00 */	li r5, 0
/* 8062B16C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062B170  38 C0 00 00 */	li r6, 0
/* 8062B174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062B178  93 C1 00 08 */	stw r30, 8(r1)
/* 8062B17C  7C 7E 1B 78 */	mr r30, r3
/* 8062B180  7F C7 F3 78 */	mr r7, r30
/* 8062B184  83 E3 00 00 */	lwz r31, 0(r3)
/* 8062B188  7F E3 FB 78 */	mr r3, r31
/* 8062B18C  4B DB A5 01 */	bl DisplayList_initialize
/* 8062B190  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062B194  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8062B198  80 63 00 00 */	lwz r3, 0(r3)
/* 8062B19C  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 8062B1A0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062B1A4  40 82 00 10 */	bne lbl_8062B1B4
/* 8062B1A8  A8 03 10 78 */	lha r0, 0x1078(r3)
/* 8062B1AC  7C 00 07 35 */	extsh. r0, r0
/* 8062B1B0  41 82 00 80 */	beq lbl_8062B230
lbl_8062B1B4:
/* 8062B1B4  7F C3 F3 78 */	mr r3, r30
/* 8062B1B8  7F E4 FB 78 */	mr r4, r31
/* 8062B1BC  4B FF F9 85 */	bl setupFog
/* 8062B1C0  7F C3 F3 78 */	mr r3, r30
/* 8062B1C4  4B FF F9 CD */	bl setupViewer
/* 8062B1C8  7F C3 F3 78 */	mr r3, r30
/* 8062B1CC  7F E4 FB 78 */	mr r4, r31
/* 8062B1D0  7F E5 FB 78 */	mr r5, r31
/* 8062B1D4  4B FF F9 E5 */	bl setupViewMatrix
/* 8062B1D8  7F C3 F3 78 */	mr r3, r30
/* 8062B1DC  7F E4 FB 78 */	mr r4, r31
/* 8062B1E0  7F E5 FB 78 */	mr r5, r31
/* 8062B1E4  4B FF FB 65 */	bl makeBumpTexture
/* 8062B1E8  2C 03 00 01 */	cmpwi r3, 1
/* 8062B1EC  40 82 00 44 */	bne lbl_8062B230
/* 8062B1F0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062B1F4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8062B1F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8062B1FC  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 8062B200  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062B204  40 82 00 10 */	bne lbl_8062B214
/* 8062B208  A8 03 10 86 */	lha r0, 0x1086(r3)
/* 8062B20C  7C 00 07 35 */	extsh. r0, r0
/* 8062B210  41 82 00 20 */	beq lbl_8062B230
lbl_8062B214:
/* 8062B214  7F C3 F3 78 */	mr r3, r30
/* 8062B218  4B DC A1 05 */	bl watch_my_step_draw
/* 8062B21C  7F C3 F3 78 */	mr r3, r30
/* 8062B220  4B D4 D0 BD */	bl banti_draw
/* 8062B224  7F C4 F3 78 */	mr r4, r30
/* 8062B228  38 7E 1D EC */	addi r3, r30, 0x1dec
/* 8062B22C  4B DC 4B 95 */	bl mSM_submenu_draw
lbl_8062B230:
/* 8062B230  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8062B234  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 8062B238  2C 00 00 00 */	cmpwi r0, 0
/* 8062B23C  41 82 00 34 */	beq lbl_8062B270
/* 8062B240  4B D6 FC 79 */	bl mEv_CheckTitleDemo
/* 8062B244  2C 03 FF FF */	cmpwi r3, -1
/* 8062B248  41 82 00 20 */	beq lbl_8062B268
/* 8062B24C  40 80 00 10 */	bge lbl_8062B25C
/* 8062B250  2C 03 FF F7 */	cmpwi r3, -9
/* 8062B254  41 82 00 14 */	beq lbl_8062B268
/* 8062B258  48 00 00 10 */	b lbl_8062B268
lbl_8062B25C:
/* 8062B25C  2C 03 00 01 */	cmpwi r3, 1
/* 8062B260  40 80 00 08 */	bge lbl_8062B268
/* 8062B264  48 00 00 0C */	b lbl_8062B270
lbl_8062B268:
/* 8062B268  7F E3 FB 78 */	mr r3, r31
/* 8062B26C  4B FF FE 61 */	bl draw_version
lbl_8062B270:
/* 8062B270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062B274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062B278  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062B27C  7C 08 03 A6 */	mtlr r0
/* 8062B280  38 21 00 10 */	addi r1, r1, 0x10
/* 8062B284  4E 80 00 20 */	blr 
