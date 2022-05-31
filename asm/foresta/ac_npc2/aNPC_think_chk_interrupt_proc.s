lbl_805423C4:
/* 805423C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805423C8  7C 08 02 A6 */	mflr r0
/* 805423CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805423D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805423D4  4B B5 8B 01 */	bl func_8009AED4
/* 805423D8  7C 7D 1B 78 */	mr r29, r3
/* 805423DC  7C 9E 23 78 */	mr r30, r4
/* 805423E0  3B E0 00 00 */	li r31, 0
/* 805423E4  4B FF ED F9 */	bl aNPC_chk_talk_start
/* 805423E8  2C 03 00 01 */	cmpwi r3, 1
/* 805423EC  40 82 00 0C */	bne lbl_805423F8
/* 805423F0  3B E0 00 01 */	li r31, 1
/* 805423F4  48 00 00 B4 */	b lbl_805424A8
lbl_805423F8:
/* 805423F8  7F A3 EB 78 */	mr r3, r29
/* 805423FC  4B FF A2 45 */	bl aNPC_chk_right_hand
/* 80542400  2C 03 00 00 */	cmpwi r3, 0
/* 80542404  40 82 00 0C */	bne lbl_80542410
/* 80542408  3B E0 00 01 */	li r31, 1
/* 8054240C  48 00 00 9C */	b lbl_805424A8
lbl_80542410:
/* 80542410  7F A3 EB 78 */	mr r3, r29
/* 80542414  4B FF A2 E1 */	bl aNPC_chk_left_hand
/* 80542418  2C 03 00 00 */	cmpwi r3, 0
/* 8054241C  40 82 00 0C */	bne lbl_80542428
/* 80542420  3B E0 00 01 */	li r31, 1
/* 80542424  48 00 00 84 */	b lbl_805424A8
lbl_80542428:
/* 80542428  7F A3 EB 78 */	mr r3, r29
/* 8054242C  4B FF EB FD */	bl aNPC_check_uzai
/* 80542430  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80542434  3C 60 80 65 */	lis r3, lit_2562@ha /* 0x80649428@ha */
/* 80542438  FC 20 02 10 */	fabs f1, f0
/* 8054243C  C0 03 94 28 */	lfs f0, lit_2562@l(r3)  /* 0x80649428@l */
/* 80542440  FC 20 08 18 */	frsp f1, f1
/* 80542444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80542448  41 80 00 48 */	blt lbl_80542490
/* 8054244C  7F A3 EB 78 */	mr r3, r29
/* 80542450  4B FF EE 1D */	bl aNPC_check_fatigue
/* 80542454  2C 03 00 01 */	cmpwi r3, 1
/* 80542458  40 82 00 28 */	bne lbl_80542480
/* 8054245C  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 80542460  7F A3 EB 78 */	mr r3, r29
/* 80542464  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 80542468  38 A0 00 00 */	li r5, 0
/* 8054246C  38 80 00 01 */	li r4, 1
/* 80542470  38 C0 00 00 */	li r6, 0
/* 80542474  4B FF CF 2D */	bl aNPC_set_request_act
/* 80542478  3B E0 00 01 */	li r31, 1
/* 8054247C  48 00 00 14 */	b lbl_80542490
lbl_80542480:
/* 80542480  7F A3 EB 78 */	mr r3, r29
/* 80542484  7F C4 F3 78 */	mr r4, r30
/* 80542488  4B FF F9 7D */	bl aNPC_avoid_obstacle
/* 8054248C  7C 7F 1B 78 */	mr r31, r3
lbl_80542490:
/* 80542490  2C 1F 00 00 */	cmpwi r31, 0
/* 80542494  40 82 00 14 */	bne lbl_805424A8
/* 80542498  7F A3 EB 78 */	mr r3, r29
/* 8054249C  7F C4 F3 78 */	mr r4, r30
/* 805424A0  4B FF FE AD */	bl aNPC_chk_friendship
/* 805424A4  7C 7F 1B 78 */	mr r31, r3
lbl_805424A8:
/* 805424A8  7F E3 FB 78 */	mr r3, r31
/* 805424AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805424B0  4B B5 8A 71 */	bl func_8009AF20
/* 805424B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805424B8  7C 08 03 A6 */	mtlr r0
/* 805424BC  38 21 00 20 */	addi r1, r1, 0x20
/* 805424C0  4E 80 00 20 */	blr 
