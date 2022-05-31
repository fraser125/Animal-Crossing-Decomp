lbl_804F1698:
/* 804F1698  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F169C  7C 08 02 A6 */	mflr r0
/* 804F16A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F16A4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804F16A8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804F16AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F16B0  4B BA 98 21 */	bl func_8009AED0
/* 804F16B4  7C 7C 1B 78 */	mr r28, r3
/* 804F16B8  FF E0 08 90 */	fmr f31, f1
/* 804F16BC  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804F16C0  7C 9D 23 78 */	mr r29, r4
/* 804F16C4  7C BE 2B 78 */	mr r30, r5
/* 804F16C8  2C 00 00 8D */	cmpwi r0, 0x8d
/* 804F16CC  40 82 00 A4 */	bne lbl_804F1770
/* 804F16D0  3B FC 0D 18 */	addi r31, r28, 0xd18
/* 804F16D4  80 1C 0D 3C */	lwz r0, 0xd3c(r28)
/* 804F16D8  2C 00 00 00 */	cmpwi r0, 0
/* 804F16DC  41 82 00 14 */	beq lbl_804F16F0
/* 804F16E0  7F E5 FB 78 */	mr r5, r31
/* 804F16E4  38 C0 00 01 */	li r6, 1
/* 804F16E8  4B FF F8 D5 */	bl Player_actor_SearchAnimation_Reflect_axe
/* 804F16EC  48 00 00 24 */	b lbl_804F1710
lbl_804F16F0:
/* 804F16F0  38 80 00 01 */	li r4, 1
/* 804F16F4  4B FF F6 2D */	bl Player_actor_SetAngleSpeedF_Reflect_axe
/* 804F16F8  FC 20 F8 90 */	fmr f1, f31
/* 804F16FC  7F 83 E3 78 */	mr r3, r28
/* 804F1700  7F A4 EB 78 */	mr r4, r29
/* 804F1704  7F E5 FB 78 */	mr r5, r31
/* 804F1708  38 C0 00 01 */	li r6, 1
/* 804F170C  4B FF EC 19 */	bl Player_actor_SearchAnimation_Swing_axe
lbl_804F1710:
/* 804F1710  FC 20 F8 90 */	fmr f1, f31
/* 804F1714  7F 83 E3 78 */	mr r3, r28
/* 804F1718  4B FE 5D C5 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F171C  2C 03 00 00 */	cmpwi r3, 0
/* 804F1720  40 82 00 10 */	bne lbl_804F1730
/* 804F1724  7F 83 E3 78 */	mr r3, r28
/* 804F1728  7F A4 EB 78 */	mr r4, r29
/* 804F172C  4B FF FE C1 */	bl Player_actor_SetEffect_Broken_axe
lbl_804F1730:
/* 804F1730  2C 1E 00 00 */	cmpwi r30, 0
/* 804F1734  41 82 00 3C */	beq lbl_804F1770
/* 804F1738  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F173C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F1740  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F1744  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F1748  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F174C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F1750  C0 83 65 68 */	lfs f4, lit_604@l(r3)  /* 0x80646568@l */
/* 804F1754  7F 83 E3 78 */	mr r3, r28
/* 804F1758  FC 40 08 90 */	fmr f2, f1
/* 804F175C  7F A4 EB 78 */	mr r4, r29
/* 804F1760  38 A0 00 8E */	li r5, 0x8e
/* 804F1764  38 C0 00 8E */	li r6, 0x8e
/* 804F1768  38 E0 00 00 */	li r7, 0
/* 804F176C  4B FE 4F 8D */	bl Player_actor_InitAnimation_Base1
lbl_804F1770:
/* 804F1770  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804F1774  39 61 00 20 */	addi r11, r1, 0x20
/* 804F1778  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804F177C  4B BA 97 A1 */	bl func_8009AF1C
/* 804F1780  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F1784  7C 08 03 A6 */	mtlr r0
/* 804F1788  38 21 00 30 */	addi r1, r1, 0x30
/* 804F178C  4E 80 00 20 */	blr 
