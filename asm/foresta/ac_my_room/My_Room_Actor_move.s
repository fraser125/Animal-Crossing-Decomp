lbl_8047D710:
/* 8047D710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047D714  7C 08 02 A6 */	mflr r0
/* 8047D718  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047D71C  39 61 00 20 */	addi r11, r1, 0x20
/* 8047D720  4B C1 D7 AD */	bl func_8009AECC
/* 8047D724  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8047D728  81 83 04 B8 */	lwz r12, 0x4b8(r3)
/* 8047D72C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8047D730  7C 7F 1B 78 */	mr r31, r3
/* 8047D734  3C A5 00 02 */	addis r5, r5, 2
/* 8047D738  7C 9D 23 78 */	mr r29, r4
/* 8047D73C  8B C5 60 03 */	lbz r30, 0x6003(r5)
/* 8047D740  7D 89 03 A6 */	mtctr r12
/* 8047D744  4E 80 04 21 */	bctrl 
/* 8047D748  A8 1F 01 74 */	lha r0, 0x174(r31)
/* 8047D74C  2C 00 00 00 */	cmpwi r0, 0
/* 8047D750  40 82 00 10 */	bne lbl_8047D760
/* 8047D754  7F E3 FB 78 */	mr r3, r31
/* 8047D758  7F A4 EB 78 */	mr r4, r29
/* 8047D75C  4B FF 9B 1D */	bl aMR_RequestPlayerBikkuri
lbl_8047D760:
/* 8047D760  4B F2 75 ED */	bl mFI_CheckShop
/* 8047D764  2C 03 00 01 */	cmpwi r3, 1
/* 8047D768  41 82 00 5C */	beq lbl_8047D7C4
/* 8047D76C  4B F2 75 61 */	bl mFI_GetFieldId
/* 8047D770  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8047D774  28 00 30 02 */	cmplwi r0, 0x3002
/* 8047D778  41 82 00 4C */	beq lbl_8047D7C4
/* 8047D77C  80 1F 04 78 */	lwz r0, 0x478(r31)
/* 8047D780  2C 00 00 00 */	cmpwi r0, 0
/* 8047D784  41 82 00 40 */	beq lbl_8047D7C4
/* 8047D788  83 9F 04 74 */	lwz r28, 0x474(r31)
/* 8047D78C  28 1C 00 00 */	cmplwi r28, 0
/* 8047D790  41 82 00 34 */	beq lbl_8047D7C4
/* 8047D794  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 8047D798  A8 7C 01 24 */	lha r3, 0x124(r28)
/* 8047D79C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8047D7A0  54 7B 04 3E */	clrlwi r27, r3, 0x10
/* 8047D7A4  41 82 00 20 */	beq lbl_8047D7C4
/* 8047D7A8  A0 7C 00 00 */	lhz r3, 0(r28)
/* 8047D7AC  4B FF FE 39 */	bl aMR_Fname2ConpoIndex
/* 8047D7B0  7C 65 1B 78 */	mr r5, r3
/* 8047D7B4  7F 64 DB 78 */	mr r4, r27
/* 8047D7B8  7F 86 E3 78 */	mr r6, r28
/* 8047D7BC  38 7C 00 08 */	addi r3, r28, 8
/* 8047D7C0  4B EF F0 09 */	bl mBGMPsComp_MDPlayerPos_param_set
lbl_8047D7C4:
/* 8047D7C4  7F E3 FB 78 */	mr r3, r31
/* 8047D7C8  7F A4 EB 78 */	mr r4, r29
/* 8047D7CC  4B FF F8 4D */	bl aMR_SetReserveFurniture
/* 8047D7D0  A8 7F 04 6E */	lha r3, 0x46e(r31)
/* 8047D7D4  2C 03 00 00 */	cmpwi r3, 0
/* 8047D7D8  40 81 00 10 */	ble lbl_8047D7E8
/* 8047D7DC  38 03 FF FF */	addi r0, r3, -1
/* 8047D7E0  B0 1F 04 6E */	sth r0, 0x46e(r31)
/* 8047D7E4  48 00 00 0C */	b lbl_8047D7F0
lbl_8047D7E8:
/* 8047D7E8  38 00 00 00 */	li r0, 0
/* 8047D7EC  B0 1F 04 6E */	sth r0, 0x46e(r31)
lbl_8047D7F0:
/* 8047D7F0  4B F2 75 5D */	bl mFI_CheckShop
/* 8047D7F4  2C 03 00 01 */	cmpwi r3, 1
/* 8047D7F8  41 82 00 48 */	beq lbl_8047D840
/* 8047D7FC  4B F2 74 D1 */	bl mFI_GetFieldId
/* 8047D800  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8047D804  28 00 30 02 */	cmplwi r0, 0x3002
/* 8047D808  41 82 00 38 */	beq lbl_8047D840
/* 8047D80C  A8 1F 04 6E */	lha r0, 0x46e(r31)
/* 8047D810  2C 00 00 00 */	cmpwi r0, 0
/* 8047D814  40 82 00 2C */	bne lbl_8047D840
/* 8047D818  88 1F 04 6C */	lbz r0, 0x46c(r31)
/* 8047D81C  2C 00 00 01 */	cmpwi r0, 1
/* 8047D820  40 82 00 20 */	bne lbl_8047D840
/* 8047D824  4B F4 1E 85 */	bl func_803BF6A8
/* 8047D828  4B F4 34 C5 */	bl mMsg_Check_MainHide
/* 8047D82C  2C 03 00 00 */	cmpwi r3, 0
/* 8047D830  41 82 00 10 */	beq lbl_8047D840
/* 8047D834  80 9F 04 70 */	lwz r4, 0x470(r31)
/* 8047D838  7F E3 FB 78 */	mr r3, r31
/* 8047D83C  4B FF 44 21 */	bl aMR_ChangeMDBgm
lbl_8047D840:
/* 8047D840  7F E3 FB 78 */	mr r3, r31
/* 8047D844  7F A4 EB 78 */	mr r4, r29
/* 8047D848  4B FF FD 29 */	bl aMR_MakeClockInfo
/* 8047D84C  3C 60 80 64 */	lis r3, data_806449AC@ha /* 0x806449AC@ha */
/* 8047D850  38 00 00 05 */	li r0, 5
/* 8047D854  38 63 49 AC */	addi r3, r3, data_806449AC@l /* 0x806449AC@l */
/* 8047D858  38 BF 01 74 */	addi r5, r31, 0x174
/* 8047D85C  38 83 FF FC */	addi r4, r3, -4
/* 8047D860  7C 09 03 A6 */	mtctr r0
lbl_8047D864:
/* 8047D864  80 64 00 04 */	lwz r3, 4(r4)
/* 8047D868  84 04 00 08 */	lwzu r0, 8(r4)
/* 8047D86C  90 65 00 04 */	stw r3, 4(r5)
/* 8047D870  94 05 00 08 */	stwu r0, 8(r5)
/* 8047D874  42 00 FF F0 */	bdnz lbl_8047D864
/* 8047D878  80 04 00 04 */	lwz r0, 4(r4)
/* 8047D87C  90 05 00 04 */	stw r0, 4(r5)
/* 8047D880  4B FF E3 65 */	bl aMR_InitFactorCollisionDirect
/* 8047D884  7F A3 EB 78 */	mr r3, r29
/* 8047D888  4B FF CF 89 */	bl aMR_RewriteFactorInfo
/* 8047D88C  7F E3 FB 78 */	mr r3, r31
/* 8047D890  7F A4 EB 78 */	mr r4, r29
/* 8047D894  4B FF C9 29 */	bl aMR_MngFtrContactAction
/* 8047D898  7F C3 F3 78 */	mr r3, r30
/* 8047D89C  7F E4 FB 78 */	mr r4, r31
/* 8047D8A0  4B FF 53 3D */	bl aMR_CheckRoomOwner
/* 8047D8A4  2C 03 00 00 */	cmpwi r3, 0
/* 8047D8A8  41 82 00 18 */	beq lbl_8047D8C0
/* 8047D8AC  7F C3 F3 78 */	mr r3, r30
/* 8047D8B0  7F E4 FB 78 */	mr r4, r31
/* 8047D8B4  7F A5 EB 78 */	mr r5, r29
/* 8047D8B8  4B FF FC 11 */	bl aMR_HouseOwnerMove
/* 8047D8BC  48 00 00 14 */	b lbl_8047D8D0
lbl_8047D8C0:
/* 8047D8C0  7F C3 F3 78 */	mr r3, r30
/* 8047D8C4  7F E4 FB 78 */	mr r4, r31
/* 8047D8C8  7F A5 EB 78 */	mr r5, r29
/* 8047D8CC  4B FF FC 51 */	bl aMR_HouseOtherMove
lbl_8047D8D0:
/* 8047D8D0  7F E3 FB 78 */	mr r3, r31
/* 8047D8D4  4B FF F9 99 */	bl aMR_SetFtrDemoMsg
/* 8047D8D8  7F E3 FB 78 */	mr r3, r31
/* 8047D8DC  7F A4 EB 78 */	mr r4, r29
/* 8047D8E0  4B FF 94 09 */	bl aMR_MessageControl
/* 8047D8E4  4B FF F6 E5 */	bl aMR_ClearChangeSwitchFlag
/* 8047D8E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8047D8EC  4B C1 D6 2D */	bl func_8009AF18
/* 8047D8F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047D8F4  7C 08 03 A6 */	mtlr r0
/* 8047D8F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8047D8FC  4E 80 00 20 */	blr 
