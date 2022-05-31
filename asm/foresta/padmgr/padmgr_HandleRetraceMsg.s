lbl_804082AC:
/* 804082AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804082B0  7C 08 02 A6 */	mflr r0
/* 804082B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804082B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804082BC  4B FF F9 51 */	bl func_80407C0C
/* 804082C0  7C 7F 1B 78 */	mr r31, r3
/* 804082C4  4B C5 83 65 */	bl func_80060628
/* 804082C8  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 804082CC  38 63 F0 38 */	addi r3, r3, data_8065F038@l /* 0x8065F038@l */
/* 804082D0  80 63 00 00 */	lwz r3, 0(r3)
/* 804082D4  81 83 00 04 */	lwz r12, 4(r3)
/* 804082D8  28 0C 00 00 */	cmplwi r12, 0
/* 804082DC  41 82 00 10 */	beq lbl_804082EC
/* 804082E0  80 63 00 08 */	lwz r3, 8(r3)
/* 804082E4  7D 89 03 A6 */	mtctr r12
/* 804082E8  4E 80 04 21 */	bctrl 
lbl_804082EC:
/* 804082EC  7F E3 FB 78 */	mr r3, r31
/* 804082F0  38 80 00 00 */	li r4, 0
/* 804082F4  38 A0 00 01 */	li r5, 1
/* 804082F8  4B C5 7E 25 */	bl osRecvMesg
/* 804082FC  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 80408300  38 63 F0 38 */	addi r3, r3, data_8065F038@l /* 0x8065F038@l */
/* 80408304  80 63 00 00 */	lwz r3, 0(r3)
/* 80408308  38 63 04 28 */	addi r3, r3, 0x428
/* 8040830C  4B C5 83 5D */	bl osContGetReadData
/* 80408310  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 80408314  38 63 F0 38 */	addi r3, r3, data_8065F038@l /* 0x8065F038@l */
/* 80408318  80 63 00 00 */	lwz r3, 0(r3)
/* 8040831C  88 03 04 5E */	lbz r0, 0x45e(r3)
/* 80408320  28 00 00 00 */	cmplwi r0, 0
/* 80408324  41 82 00 10 */	beq lbl_80408334
/* 80408328  38 63 04 28 */	addi r3, r3, 0x428
/* 8040832C  38 80 00 18 */	li r4, 0x18
/* 80408330  4B C5 4D 39 */	bl bzero
lbl_80408334:
/* 80408334  7F E3 FB 78 */	mr r3, r31
/* 80408338  4B C5 82 9D */	bl func_800605D4
/* 8040833C  7F E3 FB 78 */	mr r3, r31
/* 80408340  38 80 00 00 */	li r4, 0
/* 80408344  38 A0 00 01 */	li r5, 1
/* 80408348  4B C5 7D D5 */	bl osRecvMesg
/* 8040834C  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 80408350  38 63 F0 38 */	addi r3, r3, data_8065F038@l /* 0x8065F038@l */
/* 80408354  80 63 00 00 */	lwz r3, 0(r3)
/* 80408358  38 63 00 14 */	addi r3, r3, 0x14
/* 8040835C  4B C5 82 A5 */	bl osContGetQuery
/* 80408360  7F E3 FB 78 */	mr r3, r31
/* 80408364  4B FF F8 E5 */	bl padmgr_UnlockSerialMesgQ
/* 80408368  4B FF FE 09 */	bl padmgr_ConnectCheck
/* 8040836C  4B FF F9 11 */	bl padmgr_LockContData
/* 80408370  4B FF FC 15 */	bl padmgr_HandleDoneReadPadMsg
/* 80408374  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 80408378  38 63 F0 38 */	addi r3, r3, data_8065F038@l /* 0x8065F038@l */
/* 8040837C  80 63 00 00 */	lwz r3, 0(r3)
/* 80408380  81 83 00 0C */	lwz r12, 0xc(r3)
/* 80408384  28 0C 00 00 */	cmplwi r12, 0
/* 80408388  41 82 00 10 */	beq lbl_80408398
/* 8040838C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80408390  7D 89 03 A6 */	mtctr r12
/* 80408394  4E 80 04 21 */	bctrl 
lbl_80408398:
/* 80408398  4B FF F9 1D */	bl padmgr_UnlockContData
/* 8040839C  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 804083A0  80 83 F0 38 */	lwz r4, data_8065F038@l(r3)  /* 0x8065F038@l */
/* 804083A4  A8 64 04 5A */	lha r3, 0x45a(r4)
/* 804083A8  7C 60 07 35 */	extsh. r0, r3
/* 804083AC  41 82 00 34 */	beq lbl_804083E0
/* 804083B0  2C 03 00 01 */	cmpwi r3, 1
/* 804083B4  40 81 00 14 */	ble lbl_804083C8
/* 804083B8  38 03 FF FF */	addi r0, r3, -1
/* 804083BC  B0 04 04 5A */	sth r0, 0x45a(r4)
/* 804083C0  4B FF FA 0D */	bl padmgr_RumbleStop
/* 804083C4  48 00 00 54 */	b lbl_80408418
lbl_804083C8:
/* 804083C8  7C 60 07 35 */	extsh. r0, r3
/* 804083CC  40 80 00 4C */	bge lbl_80408418
/* 804083D0  38 03 00 01 */	addi r0, r3, 1
/* 804083D4  B0 04 04 5A */	sth r0, 0x45a(r4)
/* 804083D8  4B FF F9 F5 */	bl padmgr_RumbleStop
/* 804083DC  48 00 00 3C */	b lbl_80408418
lbl_804083E0:
/* 804083E0  88 04 04 5C */	lbz r0, 0x45c(r4)
/* 804083E4  28 00 00 00 */	cmplwi r0, 0
/* 804083E8  40 82 00 0C */	bne lbl_804083F4
/* 804083EC  4B FF F9 E1 */	bl padmgr_RumbleStop
/* 804083F0  48 00 00 28 */	b lbl_80408418
lbl_804083F4:
/* 804083F4  88 04 04 5E */	lbz r0, 0x45e(r4)
/* 804083F8  28 00 00 00 */	cmplwi r0, 0
/* 804083FC  40 82 00 1C */	bne lbl_80408418
/* 80408400  4B FF F8 ED */	bl padmgr_RumbleControl
/* 80408404  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 80408408  80 83 F0 38 */	lwz r4, data_8065F038@l(r3)  /* 0x8065F038@l */
/* 8040840C  88 64 04 5C */	lbz r3, 0x45c(r4)
/* 80408410  38 03 FF FF */	addi r0, r3, -1
/* 80408414  98 04 04 5C */	stb r0, 0x45c(r4)
lbl_80408418:
/* 80408418  4B FF F7 F5 */	bl func_80407C0C
/* 8040841C  7C 7F 1B 78 */	mr r31, r3
/* 80408420  4B FF FA 95 */	bl padmgr_PakConnectCheck
/* 80408424  7F E3 FB 78 */	mr r3, r31
/* 80408428  4B FF F8 21 */	bl padmgr_UnlockSerialMesgQ
/* 8040842C  3C 60 81 1C */	lis r3, data_811C7170@ha /* 0x811C7170@ha */
/* 80408430  38 83 71 70 */	addi r4, r3, data_811C7170@l /* 0x811C7170@l */
/* 80408434  80 64 00 00 */	lwz r3, 0(r4)
/* 80408438  38 03 00 01 */	addi r0, r3, 1
/* 8040843C  90 04 00 00 */	stw r0, 0(r4)
/* 80408440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80408444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80408448  7C 08 03 A6 */	mtlr r0
/* 8040844C  38 21 00 10 */	addi r1, r1, 0x10
/* 80408450  4E 80 00 20 */	blr 
