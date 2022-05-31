lbl_80389F2C:
/* 80389F2C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80389F30  7C 08 02 A6 */	mflr r0
/* 80389F34  90 01 00 54 */	stw r0, 0x54(r1)
/* 80389F38  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80389F3C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80389F40  39 61 00 40 */	addi r11, r1, 0x40
/* 80389F44  4B D1 0F 8D */	bl func_8009AED0
/* 80389F48  3C C0 80 64 */	lis r6, lit_5000@ha /* 0x80641BF4@ha */
/* 80389F4C  7C 9D 23 78 */	mr r29, r4
/* 80389F50  84 86 1B F4 */	lwzu r4, lit_5000@l(r6)  /* 0x80641BF4@l */
/* 80389F54  7C 7C 1B 78 */	mr r28, r3
/* 80389F58  FF E0 10 90 */	fmr f31, f2
/* 80389F5C  7C BE 2B 78 */	mr r30, r5
/* 80389F60  A0 06 00 04 */	lhz r0, 4(r6)
/* 80389F64  7F A3 EB 78 */	mr r3, r29
/* 80389F68  90 81 00 08 */	stw r4, 8(r1)
/* 80389F6C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80389F70  4B FF FB 45 */	bl mCoBG_MoveActorWithMoveBg
/* 80389F74  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389F78  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389F7C  3B E3 00 34 */	addi r31, r3, 0x34
/* 80389F80  7F E3 FB 78 */	mr r3, r31
/* 80389F84  4B FF C6 29 */	bl mCoBG_InitRevpos
/* 80389F88  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389F8C  7F A4 EB 78 */	mr r4, r29
/* 80389F90  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389F94  38 63 00 1C */	addi r3, r3, 0x1c
/* 80389F98  4B FF EA 51 */	bl mCoBG_GetCurrentCenterPosition
/* 80389F9C  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389FA0  7F A4 EB 78 */	mr r4, r29
/* 80389FA4  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389FA8  38 63 00 28 */	addi r3, r3, 0x28
/* 80389FAC  4B FF EA 59 */	bl mCoBG_GetOldCenterPosition
/* 80389FB0  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389FB4  7F A4 EB 78 */	mr r4, r29
/* 80389FB8  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389FBC  38 63 00 0C */	addi r3, r3, 0xc
/* 80389FC0  4B FF C4 DD */	bl mCoBG_GetSpeedByWpos
/* 80389FC4  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 80389FC8  FC 40 F8 90 */	fmr f2, f31
/* 80389FCC  38 83 19 A4 */	addi r4, r3, data_806419A4@l /* 0x806419A4@l */
/* 80389FD0  3C A0 81 13 */	lis r5, l_ActorInf@ha /* 0x81135560@ha */
/* 80389FD4  C0 24 00 00 */	lfs f1, 0(r4)
/* 80389FD8  38 65 55 60 */	addi r3, r5, l_ActorInf@l /* 0x81135560@l */
/* 80389FDC  7F A4 EB 78 */	mr r4, r29
/* 80389FE0  38 A0 00 00 */	li r5, 0
/* 80389FE4  38 C0 FF FF */	li r6, -1
/* 80389FE8  38 E0 FF FF */	li r7, -1
/* 80389FEC  4B FF F8 B5 */	bl mCoBG_MakeActorInf
/* 80389FF0  FC 20 F8 90 */	fmr f1, f31
/* 80389FF4  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389FF8  38 83 55 60 */	addi r4, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389FFC  7F A5 EB 78 */	mr r5, r29
/* 8038A000  7F E3 FB 78 */	mr r3, r31
/* 8038A004  38 DD 00 98 */	addi r6, r29, 0x98
/* 8038A008  38 E1 00 08 */	addi r7, r1, 8
/* 8038A00C  39 00 00 00 */	li r8, 0
/* 8038A010  4B FF F4 89 */	bl mCoBG_GroundCheck
/* 8038A014  80 FF 00 00 */	lwz r7, 0(r31)
/* 8038A018  7F A3 EB 78 */	mr r3, r29
/* 8038A01C  80 DF 00 04 */	lwz r6, 4(r31)
/* 8038A020  7F C5 F3 78 */	mr r5, r30
/* 8038A024  80 1F 00 08 */	lwz r0, 8(r31)
/* 8038A028  38 81 00 1C */	addi r4, r1, 0x1c
/* 8038A02C  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 8038A030  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8038A034  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038A038  4B FF C4 89 */	bl mCoBG_CarryOutReverse
/* 8038A03C  80 DF 00 00 */	lwz r6, 0(r31)
/* 8038A040  7F 83 E3 78 */	mr r3, r28
/* 8038A044  80 BF 00 04 */	lwz r5, 4(r31)
/* 8038A048  38 81 00 10 */	addi r4, r1, 0x10
/* 8038A04C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8038A050  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8038A054  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8038A058  90 01 00 18 */	stw r0, 0x18(r1)
/* 8038A05C  4B FF F9 99 */	bl mCoBG_GiveRevposToActor
/* 8038A060  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8038A064  39 61 00 40 */	addi r11, r1, 0x40
/* 8038A068  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8038A06C  4B D1 0E B1 */	bl func_8009AF1C
/* 8038A070  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8038A074  7C 08 03 A6 */	mtlr r0
/* 8038A078  38 21 00 50 */	addi r1, r1, 0x50
/* 8038A07C  4E 80 00 20 */	blr 
