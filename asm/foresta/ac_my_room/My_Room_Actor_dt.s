lbl_80473544:
/* 80473544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80473548  7C 08 02 A6 */	mflr r0
/* 8047354C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80473550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80473554  7C 9F 23 78 */	mr r31, r4
/* 80473558  93 C1 00 08 */	stw r30, 8(r1)
/* 8047355C  7C 7E 1B 78 */	mr r30, r3
/* 80473560  4B FF D5 A1 */	bl aMR_SaveSwitchData
/* 80473564  7F C3 F3 78 */	mr r3, r30
/* 80473568  7F E4 FB 78 */	mr r4, r31
/* 8047356C  4B FF FD 65 */	bl aMR_AllFurnitureDestruct
/* 80473570  7F C3 F3 78 */	mr r3, r30
/* 80473574  4B FF FC 15 */	bl aMR_FreeHeapArea
/* 80473578  48 00 40 8D */	bl aMR_GokiInfoDt
/* 8047357C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80473580  38 00 00 00 */	li r0, 0
/* 80473584  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80473588  3C 63 00 02 */	addis r3, r3, 2
/* 8047358C  90 03 60 8C */	stw r0, 0x608c(r3)
/* 80473590  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80473594  4B F1 1E FD */	bl mCkRh_SetGoingOutCottageTime
/* 80473598  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047359C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804735A0  3C 63 00 03 */	addis r3, r3, 3
/* 804735A4  80 83 DB AC */	lwz r4, -0x2454(r3)
/* 804735A8  54 80 EF FF */	rlwinm. r0, r4, 0x1d, 0x1f, 0x1f
/* 804735AC  41 82 00 38 */	beq lbl_804735E4
/* 804735B0  38 00 00 00 */	li r0, 0
/* 804735B4  90 03 DB AC */	stw r0, -0x2454(r3)
/* 804735B8  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 804735BC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804735C0  90 03 DB AC */	stw r0, -0x2454(r3)
/* 804735C4  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 804735C8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804735CC  90 03 DB AC */	stw r0, -0x2454(r3)
/* 804735D0  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 804735D4  60 00 00 08 */	ori r0, r0, 8
/* 804735D8  90 03 DB AC */	stw r0, -0x2454(r3)
/* 804735DC  48 1B AD 71 */	bl sAdo_SubGameStart
/* 804735E0  48 00 00 60 */	b lbl_80473640
lbl_804735E4:
/* 804735E4  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 804735E8  41 82 00 38 */	beq lbl_80473620
/* 804735EC  38 00 00 00 */	li r0, 0
/* 804735F0  90 03 DB AC */	stw r0, -0x2454(r3)
/* 804735F4  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 804735F8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804735FC  90 03 DB AC */	stw r0, -0x2454(r3)
/* 80473600  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 80473604  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80473608  90 03 DB AC */	stw r0, -0x2454(r3)
/* 8047360C  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 80473610  60 00 00 10 */	ori r0, r0, 0x10
/* 80473614  90 03 DB AC */	stw r0, -0x2454(r3)
/* 80473618  48 1B AD 35 */	bl sAdo_SubGameStart
/* 8047361C  48 00 00 24 */	b lbl_80473640
lbl_80473620:
/* 80473620  38 00 00 00 */	li r0, 0
/* 80473624  90 03 DB AC */	stw r0, -0x2454(r3)
/* 80473628  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 8047362C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80473630  90 03 DB AC */	stw r0, -0x2454(r3)
/* 80473634  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 80473638  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8047363C  90 03 DB AC */	stw r0, -0x2454(r3)
lbl_80473640:
/* 80473640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80473644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80473648  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047364C  7C 08 03 A6 */	mtlr r0
/* 80473650  38 21 00 10 */	addi r1, r1, 0x10
/* 80473654  4E 80 00 20 */	blr 
