lbl_80389DC8:
/* 80389DC8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80389DCC  7C 08 02 A6 */	mflr r0
/* 80389DD0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80389DD4  39 61 00 70 */	addi r11, r1, 0x70
/* 80389DD8  DB E1 00 78 */	stfd f31, 0x78(r1)
/* 80389DDC  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80389DE0  4B D1 10 ED */	bl func_8009AECC
/* 80389DE4  7C 9C 23 78 */	mr r28, r4
/* 80389DE8  FF C0 08 90 */	fmr f30, f1
/* 80389DEC  FF E0 10 90 */	fmr f31, f2
/* 80389DF0  38 00 00 06 */	li r0, 6
/* 80389DF4  7C 7B 1B 78 */	mr r27, r3
/* 80389DF8  7C BD 2B 78 */	mr r29, r5
/* 80389DFC  7C DE 33 78 */	mr r30, r6
/* 80389E00  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80389E04  38 9C 00 80 */	addi r4, r28, 0x80
/* 80389E08  7C 09 03 A6 */	mtctr r0
lbl_80389E0C:
/* 80389E0C  80 64 00 04 */	lwz r3, 4(r4)
/* 80389E10  84 04 00 08 */	lwzu r0, 8(r4)
/* 80389E14  90 65 00 04 */	stw r3, 4(r5)
/* 80389E18  94 05 00 08 */	stwu r0, 8(r5)
/* 80389E1C  42 00 FF F0 */	bdnz lbl_80389E0C
/* 80389E20  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389E24  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389E28  3B E3 00 34 */	addi r31, r3, 0x34
/* 80389E2C  7F E3 FB 78 */	mr r3, r31
/* 80389E30  4B FF C7 7D */	bl mCoBG_InitRevpos
/* 80389E34  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389E38  7F 84 E3 78 */	mr r4, r28
/* 80389E3C  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389E40  38 63 00 1C */	addi r3, r3, 0x1c
/* 80389E44  4B FF EB A5 */	bl mCoBG_GetCurrentCenterPosition
/* 80389E48  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389E4C  7F 84 E3 78 */	mr r4, r28
/* 80389E50  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389E54  38 63 00 28 */	addi r3, r3, 0x28
/* 80389E58  4B FF EB AD */	bl mCoBG_GetOldCenterPosition
/* 80389E5C  FC 20 F0 90 */	fmr f1, f30
/* 80389E60  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389E64  FC 40 F8 90 */	fmr f2, f31
/* 80389E68  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389E6C  7F 84 E3 78 */	mr r4, r28
/* 80389E70  7F C5 F3 78 */	mr r5, r30
/* 80389E74  38 C0 FF FF */	li r6, -1
/* 80389E78  38 E0 FF FF */	li r7, -1
/* 80389E7C  4B FF FA 25 */	bl mCoBG_MakeActorInf
/* 80389E80  3C 80 81 13 */	lis r4, l_ActorInf@ha /* 0x81135560@ha */
/* 80389E84  7F 83 E3 78 */	mr r3, r28
/* 80389E88  38 84 55 60 */	addi r4, r4, l_ActorInf@l /* 0x81135560@l */
/* 80389E8C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80389E90  38 A0 00 00 */	li r5, 0
/* 80389E94  4B FF E6 95 */	bl mCoBG_WallCheck
/* 80389E98  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389E9C  88 1C 00 9A */	lbz r0, 0x9a(r28)
/* 80389EA0  38 83 55 60 */	addi r4, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389EA4  7F A5 EB 78 */	mr r5, r29
/* 80389EA8  80 C4 00 64 */	lwz r6, 0x64(r4)
/* 80389EAC  7F 83 E3 78 */	mr r3, r28
/* 80389EB0  38 81 00 14 */	addi r4, r1, 0x14
/* 80389EB4  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 80389EB8  98 1C 00 9A */	stb r0, 0x9a(r28)
/* 80389EBC  80 FF 00 00 */	lwz r7, 0(r31)
/* 80389EC0  80 DF 00 04 */	lwz r6, 4(r31)
/* 80389EC4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80389EC8  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80389ECC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80389ED0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80389ED4  4B FF C5 ED */	bl mCoBG_CarryOutReverse
/* 80389ED8  80 DF 00 00 */	lwz r6, 0(r31)
/* 80389EDC  7F 63 DB 78 */	mr r3, r27
/* 80389EE0  80 BF 00 04 */	lwz r5, 4(r31)
/* 80389EE4  38 81 00 08 */	addi r4, r1, 8
/* 80389EE8  80 1F 00 08 */	lwz r0, 8(r31)
/* 80389EEC  90 C1 00 08 */	stw r6, 8(r1)
/* 80389EF0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80389EF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80389EF8  4B FF FA FD */	bl mCoBG_GiveRevposToActor
/* 80389EFC  FC 20 F0 90 */	fmr f1, f30
/* 80389F00  7F 83 E3 78 */	mr r3, r28
/* 80389F04  FC 40 F8 90 */	fmr f2, f31
/* 80389F08  4B FF FB E5 */	bl mCoBG_RoomScopeCheck
/* 80389F0C  39 61 00 70 */	addi r11, r1, 0x70
/* 80389F10  CB E1 00 78 */	lfd f31, 0x78(r1)
/* 80389F14  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80389F18  4B D1 10 01 */	bl func_8009AF18
/* 80389F1C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80389F20  7C 08 03 A6 */	mtlr r0
/* 80389F24  38 21 00 80 */	addi r1, r1, 0x80
/* 80389F28  4E 80 00 20 */	blr 
