lbl_80389BC8:
/* 80389BC8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80389BCC  7C 08 02 A6 */	mflr r0
/* 80389BD0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80389BD4  39 61 00 80 */	addi r11, r1, 0x80
/* 80389BD8  DB E1 00 88 */	stfd f31, 0x88(r1)
/* 80389BDC  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80389BE0  4B D1 12 E1 */	bl func_8009AEC0
/* 80389BE4  3D 40 80 64 */	lis r10, lit_4973@ha /* 0x80641BEC@ha */
/* 80389BE8  7C 99 23 78 */	mr r25, r4
/* 80389BEC  84 8A 1B EC */	lwzu r4, lit_4973@l(r10)  /* 0x80641BEC@l */
/* 80389BF0  7C BA 2B 78 */	mr r26, r5
/* 80389BF4  FF C0 08 90 */	fmr f30, f1
/* 80389BF8  38 00 00 06 */	li r0, 6
/* 80389BFC  A1 4A 00 04 */	lhz r10, 4(r10)
/* 80389C00  FF E0 10 90 */	fmr f31, f2
/* 80389C04  90 81 00 08 */	stw r4, 8(r1)
/* 80389C08  7C 78 1B 78 */	mr r24, r3
/* 80389C0C  7C DB 33 78 */	mr r27, r6
/* 80389C10  7C FC 3B 78 */	mr r28, r7
/* 80389C14  7D 1D 43 78 */	mr r29, r8
/* 80389C18  7D 3E 4B 78 */	mr r30, r9
/* 80389C1C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80389C20  38 99 00 80 */	addi r4, r25, 0x80
/* 80389C24  B1 41 00 0C */	sth r10, 0xc(r1)
/* 80389C28  7C 09 03 A6 */	mtctr r0
lbl_80389C2C:
/* 80389C2C  80 64 00 04 */	lwz r3, 4(r4)
/* 80389C30  84 04 00 08 */	lwzu r0, 8(r4)
/* 80389C34  90 65 00 04 */	stw r3, 4(r5)
/* 80389C38  94 05 00 08 */	stwu r0, 8(r5)
/* 80389C3C  42 00 FF F0 */	bdnz lbl_80389C2C
/* 80389C40  7F 23 CB 78 */	mr r3, r25
/* 80389C44  4B FF FE 71 */	bl mCoBG_MoveActorWithMoveBg
/* 80389C48  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389C4C  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389C50  3B E3 00 34 */	addi r31, r3, 0x34
/* 80389C54  7F E3 FB 78 */	mr r3, r31
/* 80389C58  4B FF C9 55 */	bl mCoBG_InitRevpos
/* 80389C5C  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389C60  7F 24 CB 78 */	mr r4, r25
/* 80389C64  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389C68  38 63 00 1C */	addi r3, r3, 0x1c
/* 80389C6C  4B FF ED 7D */	bl mCoBG_GetCurrentCenterPosition
/* 80389C70  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389C74  7F 24 CB 78 */	mr r4, r25
/* 80389C78  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389C7C  38 63 00 28 */	addi r3, r3, 0x28
/* 80389C80  4B FF ED 85 */	bl mCoBG_GetOldCenterPosition
/* 80389C84  FC 20 F0 90 */	fmr f1, f30
/* 80389C88  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389C8C  FC 40 F8 90 */	fmr f2, f31
/* 80389C90  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389C94  7F 24 CB 78 */	mr r4, r25
/* 80389C98  7F 85 E3 78 */	mr r5, r28
/* 80389C9C  7F A6 EB 78 */	mr r6, r29
/* 80389CA0  7F C7 F3 78 */	mr r7, r30
/* 80389CA4  4B FF FB FD */	bl mCoBG_MakeActorInf
/* 80389CA8  3C 80 81 13 */	lis r4, l_ActorInf@ha /* 0x81135560@ha */
/* 80389CAC  7F 23 CB 78 */	mr r3, r25
/* 80389CB0  38 84 55 60 */	addi r4, r4, l_ActorInf@l /* 0x81135560@l */
/* 80389CB4  7F 45 D3 78 */	mr r5, r26
/* 80389CB8  38 C1 00 28 */	addi r6, r1, 0x28
/* 80389CBC  4B FF E8 6D */	bl mCoBG_WallCheck
/* 80389CC0  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389CC4  88 19 00 9A */	lbz r0, 0x9a(r25)
/* 80389CC8  38 83 55 60 */	addi r4, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389CCC  FC 20 F8 90 */	fmr f1, f31
/* 80389CD0  80 C4 00 64 */	lwz r6, 0x64(r4)
/* 80389CD4  7F E3 FB 78 */	mr r3, r31
/* 80389CD8  7F 25 CB 78 */	mr r5, r25
/* 80389CDC  7F 48 D3 78 */	mr r8, r26
/* 80389CE0  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 80389CE4  98 19 00 9A */	stb r0, 0x9a(r25)
/* 80389CE8  38 D9 00 98 */	addi r6, r25, 0x98
/* 80389CEC  38 E1 00 08 */	addi r7, r1, 8
/* 80389CF0  4B FF F7 A9 */	bl mCoBG_GroundCheck
/* 80389CF4  3C 80 81 13 */	lis r4, l_ActorInf@ha /* 0x81135560@ha */
/* 80389CF8  7F E3 FB 78 */	mr r3, r31
/* 80389CFC  38 84 55 60 */	addi r4, r4, l_ActorInf@l /* 0x81135560@l */
/* 80389D00  7F 25 CB 78 */	mr r5, r25
/* 80389D04  38 D9 00 98 */	addi r6, r25, 0x98
/* 80389D08  38 E1 00 08 */	addi r7, r1, 8
/* 80389D0C  48 00 33 C5 */	bl mCoBG_MoveBgGroundCheck
/* 80389D10  80 FF 00 00 */	lwz r7, 0(r31)
/* 80389D14  7F 23 CB 78 */	mr r3, r25
/* 80389D18  80 DF 00 04 */	lwz r6, 4(r31)
/* 80389D1C  7F 65 DB 78 */	mr r5, r27
/* 80389D20  80 1F 00 08 */	lwz r0, 8(r31)
/* 80389D24  38 81 00 1C */	addi r4, r1, 0x1c
/* 80389D28  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 80389D2C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80389D30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80389D34  4B FF C7 8D */	bl mCoBG_CarryOutReverse
/* 80389D38  80 DF 00 00 */	lwz r6, 0(r31)
/* 80389D3C  7F 03 C3 78 */	mr r3, r24
/* 80389D40  80 BF 00 04 */	lwz r5, 4(r31)
/* 80389D44  38 81 00 10 */	addi r4, r1, 0x10
/* 80389D48  80 1F 00 08 */	lwz r0, 8(r31)
/* 80389D4C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80389D50  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80389D54  90 01 00 18 */	stw r0, 0x18(r1)
/* 80389D58  4B FF FC 9D */	bl mCoBG_GiveRevposToActor
/* 80389D5C  FC 20 F0 90 */	fmr f1, f30
/* 80389D60  7F 23 CB 78 */	mr r3, r25
/* 80389D64  FC 40 F8 90 */	fmr f2, f31
/* 80389D68  4B FF FD 85 */	bl mCoBG_RoomScopeCheck
/* 80389D6C  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389D70  38 00 FF FF */	li r0, -1
/* 80389D74  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389D78  90 03 00 68 */	stw r0, 0x68(r3)
/* 80389D7C  90 03 00 6C */	stw r0, 0x6c(r3)
/* 80389D80  CB E1 00 88 */	lfd f31, 0x88(r1)
/* 80389D84  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80389D88  39 61 00 80 */	addi r11, r1, 0x80
/* 80389D8C  4B D1 11 81 */	bl func_8009AF0C
/* 80389D90  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80389D94  7C 08 03 A6 */	mtlr r0
/* 80389D98  38 21 00 90 */	addi r1, r1, 0x90
/* 80389D9C  4E 80 00 20 */	blr 
