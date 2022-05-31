lbl_80471698:
/* 80471698  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047169C  7C 08 02 A6 */	mflr r0
/* 804716A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804716A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804716A8  4B C2 98 2D */	bl func_8009AED4
/* 804716AC  7C 7F 1B 78 */	mr r31, r3
/* 804716B0  7C 9D 23 78 */	mr r29, r4
/* 804716B4  A0 63 00 00 */	lhz r3, 0(r3)
/* 804716B8  7C BE 2B 78 */	mr r30, r5
/* 804716BC  4B FF EA E5 */	bl func_804701A0
/* 804716C0  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 804716C4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 804716C8  41 82 00 90 */	beq lbl_80471758
/* 804716CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804716D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804716D4  3C 63 00 02 */	addis r3, r3, 2
/* 804716D8  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 804716DC  83 C3 00 00 */	lwz r30, 0(r3)
/* 804716E0  28 1E 00 00 */	cmplwi r30, 0
/* 804716E4  41 82 00 CC */	beq lbl_804717B0
/* 804716E8  7F A0 07 34 */	extsh r0, r29
/* 804716EC  2C 00 00 01 */	cmpwi r0, 1
/* 804716F0  40 82 00 28 */	bne lbl_80471718
/* 804716F4  7F C3 F3 78 */	mr r3, r30
/* 804716F8  7F E4 FB 78 */	mr r4, r31
/* 804716FC  4B FF FE F1 */	bl aMR_HaniwaSwitchOn
/* 80471700  7F E3 FB 78 */	mr r3, r31
/* 80471704  7F A4 EB 78 */	mr r4, r29
/* 80471708  7F C6 F3 78 */	mr r6, r30
/* 8047170C  38 BE 04 FC */	addi r5, r30, 0x4fc
/* 80471710  4B FF F0 65 */	bl aMR_GetHaniwaStep
/* 80471714  48 00 00 A8 */	b lbl_804717BC
lbl_80471718:
/* 80471718  7F E3 FB 78 */	mr r3, r31
/* 8047171C  7F A4 EB 78 */	mr r4, r29
/* 80471720  7F C5 F3 78 */	mr r5, r30
/* 80471724  4B FF EE B5 */	bl aMR_GetSwitchBit
/* 80471728  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 8047172C  28 00 00 00 */	cmplwi r0, 0
/* 80471730  41 82 00 10 */	beq lbl_80471740
/* 80471734  7F C3 F3 78 */	mr r3, r30
/* 80471738  7F E4 FB 78 */	mr r4, r31
/* 8047173C  4B FF FE B1 */	bl aMR_HaniwaSwitchOn
lbl_80471740:
/* 80471740  7F E3 FB 78 */	mr r3, r31
/* 80471744  7F A4 EB 78 */	mr r4, r29
/* 80471748  7F C6 F3 78 */	mr r6, r30
/* 8047174C  38 BE 04 FC */	addi r5, r30, 0x4fc
/* 80471750  4B FF F0 25 */	bl aMR_GetHaniwaStep
/* 80471754  48 00 00 68 */	b lbl_804717BC
lbl_80471758:
/* 80471758  7F A0 07 34 */	extsh r0, r29
/* 8047175C  2C 00 00 01 */	cmpwi r0, 1
/* 80471760  40 82 00 34 */	bne lbl_80471794
/* 80471764  38 80 00 01 */	li r4, 1
/* 80471768  38 00 FF FF */	li r0, -1
/* 8047176C  98 9F 01 2C */	stb r4, 0x12c(r31)
/* 80471770  98 1F 01 2E */	stb r0, 0x12e(r31)
/* 80471774  A0 63 00 2E */	lhz r3, 0x2e(r3)
/* 80471778  54 60 8F FF */	rlwinm. r0, r3, 0x11, 0x1f, 0x1f
/* 8047177C  40 82 00 0C */	bne lbl_80471788
/* 80471780  54 60 A7 FF */	rlwinm. r0, r3, 0x14, 0x1f, 0x1f
/* 80471784  41 82 00 38 */	beq lbl_804717BC
lbl_80471788:
/* 80471788  38 00 00 00 */	li r0, 0
/* 8047178C  98 1F 01 2C */	stb r0, 0x12c(r31)
/* 80471790  48 00 00 2C */	b lbl_804717BC
lbl_80471794:
/* 80471794  7F E3 FB 78 */	mr r3, r31
/* 80471798  7F A4 EB 78 */	mr r4, r29
/* 8047179C  7F C5 F3 78 */	mr r5, r30
/* 804717A0  4B FF EE 39 */	bl aMR_GetSwitchBit
/* 804717A4  38 00 FF FF */	li r0, -1
/* 804717A8  98 1F 01 2E */	stb r0, 0x12e(r31)
/* 804717AC  48 00 00 10 */	b lbl_804717BC
lbl_804717B0:
/* 804717B0  38 00 00 00 */	li r0, 0
/* 804717B4  98 1F 01 2C */	stb r0, 0x12c(r31)
/* 804717B8  98 1F 01 2E */	stb r0, 0x12e(r31)
lbl_804717BC:
/* 804717BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804717C0  4B C2 97 61 */	bl func_8009AF20
/* 804717C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804717C8  7C 08 03 A6 */	mtlr r0
/* 804717CC  38 21 00 20 */	addi r1, r1, 0x20
/* 804717D0  4E 80 00 20 */	blr 
