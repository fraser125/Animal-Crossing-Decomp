lbl_803BA770:
/* 803BA770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BA774  7C 08 02 A6 */	mflr r0
/* 803BA778  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BA77C  4B FF FF 59 */	bl mEnv_DecideWeather_GameStart
/* 803BA780  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803BA784  38 60 00 00 */	li r3, 0
/* 803BA788  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803BA78C  3C A4 00 02 */	addis r5, r4, 2
/* 803BA790  A8 05 66 6C */	lha r0, 0x666c(r5)
/* 803BA794  A8 85 66 6E */	lha r4, 0x666e(r5)
/* 803BA798  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 803BA79C  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 803BA7A0  7C 80 03 78 */	or r0, r4, r0
/* 803BA7A4  98 05 0F 19 */	stb r0, 0xf19(r5)
/* 803BA7A8  48 03 8C 59 */	bl mTM_check_renew_time
/* 803BA7AC  2C 03 00 00 */	cmpwi r3, 0
/* 803BA7B0  41 82 00 0C */	beq lbl_803BA7BC
/* 803BA7B4  38 60 00 00 */	li r3, 0
/* 803BA7B8  48 03 8C 75 */	bl mTM_off_renew_time
lbl_803BA7BC:
/* 803BA7BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BA7C0  7C 08 03 A6 */	mtlr r0
/* 803BA7C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BA7C8  4E 80 00 20 */	blr 
