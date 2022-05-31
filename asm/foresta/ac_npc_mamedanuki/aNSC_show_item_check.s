lbl_8055D5FC:
/* 8055D5FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055D600  7C 08 02 A6 */	mflr r0
/* 8055D604  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055D608  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D60C  4B B3 D8 BD */	bl func_8009AEC8
/* 8055D610  7C 7C 1B 78 */	mr r28, r3
/* 8055D614  7C 9D 23 78 */	mr r29, r4
/* 8055D618  4B E6 20 91 */	bl func_803BF6A8
/* 8055D61C  7C 7F 1B 78 */	mr r31, r3
/* 8055D620  4B E6 36 79 */	bl mMsg_Check_MainNormalContinue
/* 8055D624  2C 03 00 00 */	cmpwi r3, 0
/* 8055D628  41 82 01 88 */	beq lbl_8055D7B0
/* 8055D62C  A3 7C 09 B4 */	lhz r27, 0x9b4(r28)
/* 8055D630  3B C0 00 1E */	li r30, 0x1e
/* 8055D634  3B 40 FF FF */	li r26, -1
/* 8055D638  4B E2 5F 09 */	bl func_80383540
/* 8055D63C  4B E2 65 31 */	bl mChoice_Get_ChoseNum
/* 8055D640  2C 03 00 01 */	cmpwi r3, 1
/* 8055D644  41 82 01 04 */	beq lbl_8055D748
/* 8055D648  40 80 00 10 */	bge lbl_8055D658
/* 8055D64C  2C 03 00 00 */	cmpwi r3, 0
/* 8055D650  40 80 00 14 */	bge lbl_8055D664
/* 8055D654  48 00 01 24 */	b lbl_8055D778
lbl_8055D658:
/* 8055D658  2C 03 00 03 */	cmpwi r3, 3
/* 8055D65C  40 80 01 1C */	bge lbl_8055D778
/* 8055D660  48 00 01 10 */	b lbl_8055D770
lbl_8055D664:
/* 8055D664  57 60 C7 3E */	rlwinm r0, r27, 0x18, 0x1c, 0x1f
/* 8055D668  2C 00 00 07 */	cmpwi r0, 7
/* 8055D66C  41 82 00 14 */	beq lbl_8055D680
/* 8055D670  40 80 00 78 */	bge lbl_8055D6E8
/* 8055D674  2C 00 00 06 */	cmpwi r0, 6
/* 8055D678  40 80 00 3C */	bge lbl_8055D6B4
/* 8055D67C  48 00 00 6C */	b lbl_8055D6E8
lbl_8055D680:
/* 8055D680  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055D684  7F 63 DB 78 */	mr r3, r27
/* 8055D688  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055D68C  3C 84 00 02 */	addis r4, r4, 2
/* 8055D690  80 84 60 7C */	lwz r4, 0x607c(r4)
/* 8055D694  81 84 00 04 */	lwz r12, 4(r4)
/* 8055D698  7D 89 03 A6 */	mtctr r12
/* 8055D69C  4E 80 04 21 */	bctrl 
/* 8055D6A0  7F A3 EB 78 */	mr r3, r29
/* 8055D6A4  3B 40 00 29 */	li r26, 0x29
/* 8055D6A8  38 80 00 00 */	li r4, 0
/* 8055D6AC  4B FF CE 15 */	bl aNSC_request_show_camera
/* 8055D6B0  48 00 00 8C */	b lbl_8055D73C
lbl_8055D6B4:
/* 8055D6B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055D6B8  7F 63 DB 78 */	mr r3, r27
/* 8055D6BC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055D6C0  3C 84 00 02 */	addis r4, r4, 2
/* 8055D6C4  80 84 60 7C */	lwz r4, 0x607c(r4)
/* 8055D6C8  81 84 00 08 */	lwz r12, 8(r4)
/* 8055D6CC  7D 89 03 A6 */	mtctr r12
/* 8055D6D0  4E 80 04 21 */	bctrl 
/* 8055D6D4  7F A3 EB 78 */	mr r3, r29
/* 8055D6D8  3B 40 00 29 */	li r26, 0x29
/* 8055D6DC  38 80 00 01 */	li r4, 1
/* 8055D6E0  4B FF CD E1 */	bl aNSC_request_show_camera
/* 8055D6E4  48 00 00 58 */	b lbl_8055D73C
lbl_8055D6E8:
/* 8055D6E8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055D6EC  88 7C 09 B6 */	lbz r3, 0x9b6(r28)
/* 8055D6F0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8055D6F4  88 9C 09 B7 */	lbz r4, 0x9b7(r28)
/* 8055D6F8  3C A5 00 02 */	addis r5, r5, 2
/* 8055D6FC  80 A5 60 6C */	lwz r5, 0x606c(r5)
/* 8055D700  81 85 00 08 */	lwz r12, 8(r5)
/* 8055D704  7D 89 03 A6 */	mtctr r12
/* 8055D708  4E 80 04 21 */	bctrl 
/* 8055D70C  38 00 00 1E */	li r0, 0x1e
/* 8055D710  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055D714  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055D718  90 1C 09 98 */	stw r0, 0x998(r28)
/* 8055D71C  3C 63 00 02 */	addis r3, r3, 2
/* 8055D720  3B C0 00 27 */	li r30, 0x27
/* 8055D724  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055D728  3B 40 00 3E */	li r26, 0x3e
/* 8055D72C  A0 03 10 8A */	lhz r0, 0x108a(r3)
/* 8055D730  B0 1C 09 BC */	sth r0, 0x9bc(r28)
/* 8055D734  A0 1C 09 B4 */	lhz r0, 0x9b4(r28)
/* 8055D738  B0 1C 09 BE */	sth r0, 0x9be(r28)
lbl_8055D73C:
/* 8055D73C  38 00 00 01 */	li r0, 1
/* 8055D740  98 1C 09 B8 */	stb r0, 0x9b8(r28)
/* 8055D744  48 00 00 34 */	b lbl_8055D778
lbl_8055D748:
/* 8055D748  57 60 C7 3E */	rlwinm r0, r27, 0x18, 0x1c, 0x1f
/* 8055D74C  2C 00 00 08 */	cmpwi r0, 8
/* 8055D750  40 80 00 18 */	bge lbl_8055D768
/* 8055D754  2C 00 00 06 */	cmpwi r0, 6
/* 8055D758  40 80 00 08 */	bge lbl_8055D760
/* 8055D75C  48 00 00 0C */	b lbl_8055D768
lbl_8055D760:
/* 8055D760  3B 40 00 2A */	li r26, 0x2a
/* 8055D764  48 00 00 14 */	b lbl_8055D778
lbl_8055D768:
/* 8055D768  3B 40 00 3F */	li r26, 0x3f
/* 8055D76C  48 00 00 0C */	b lbl_8055D778
lbl_8055D770:
/* 8055D770  3B C0 00 21 */	li r30, 0x21
/* 8055D774  3B 40 00 1F */	li r26, 0x1f
lbl_8055D778:
/* 8055D778  2C 1A FF FF */	cmpwi r26, -1
/* 8055D77C  41 82 00 34 */	beq lbl_8055D7B0
/* 8055D780  7F 43 D3 78 */	mr r3, r26
/* 8055D784  4B FF DE 59 */	bl aNSC_get_msg_no
/* 8055D788  7C 65 1B 78 */	mr r5, r3
/* 8055D78C  7F E3 FB 78 */	mr r3, r31
/* 8055D790  7F 84 E3 78 */	mr r4, r28
/* 8055D794  4B FF DE 81 */	bl aNSC_Set_continue_msg_num
/* 8055D798  7F E3 FB 78 */	mr r3, r31
/* 8055D79C  4B E6 35 8D */	bl mMsg_Set_ForceNext
/* 8055D7A0  7F 83 E3 78 */	mr r3, r28
/* 8055D7A4  7F A4 EB 78 */	mr r4, r29
/* 8055D7A8  7F C5 F3 78 */	mr r5, r30
/* 8055D7AC  48 00 16 25 */	bl aNSC_setupAction
lbl_8055D7B0:
/* 8055D7B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D7B4  4B B3 D7 61 */	bl func_8009AF14
/* 8055D7B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055D7BC  7C 08 03 A6 */	mtlr r0
/* 8055D7C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8055D7C4  4E 80 00 20 */	blr 
