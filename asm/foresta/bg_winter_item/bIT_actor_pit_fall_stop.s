lbl_804C5320:
/* 804C5320  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C5324  7C 08 02 A6 */	mflr r0
/* 804C5328  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C532C  39 61 00 40 */	addi r11, r1, 0x40
/* 804C5330  4B BD 5B A5 */	bl func_8009AED4
/* 804C5334  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804C5338  38 03 FF E7 */	addi r0, r3, -25
/* 804C533C  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804C5340  7C DE 33 78 */	mr r30, r6
/* 804C5344  3C 63 00 02 */	addis r3, r3, 2
/* 804C5348  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 804C534C  80 C3 60 80 */	lwz r6, 0x6080(r3)
/* 804C5350  38 61 00 20 */	addi r3, r1, 0x20
/* 804C5354  83 E6 00 00 */	lwz r31, 0(r6)
/* 804C5358  4B EE 01 25 */	bl mFI_UtNum2CenterWpos
/* 804C535C  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804C5360  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804C5364  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804C5368  38 83 61 44 */	addi r4, r3, lit_664@l /* 0x80646144@l */
/* 804C536C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804C5370  38 61 00 14 */	addi r3, r1, 0x14
/* 804C5374  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804C5378  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C537C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804C5380  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C5384  4B EC A6 15 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C5388  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804C538C  7F A3 EB 78 */	mr r3, r29
/* 804C5390  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 804C5394  38 81 00 08 */	addi r4, r1, 8
/* 804C5398  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804C539C  38 A0 00 00 */	li r5, 0
/* 804C53A0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804C53A4  90 E1 00 08 */	stw r7, 8(r1)
/* 804C53A8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804C53AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C53B0  4B EE 24 81 */	bl mFI_SetFG_common
/* 804C53B4  3C 7F 00 01 */	addis r3, r31, 1
/* 804C53B8  7F C7 F3 78 */	mr r7, r30
/* 804C53BC  38 C1 00 20 */	addi r6, r1, 0x20
/* 804C53C0  38 80 00 03 */	li r4, 3
/* 804C53C4  38 A0 00 11 */	li r5, 0x11
/* 804C53C8  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804C53CC  4B FF FE 11 */	bl bIT_actor_pit_entry_del
/* 804C53D0  38 60 00 00 */	li r3, 0
/* 804C53D4  39 61 00 40 */	addi r11, r1, 0x40
/* 804C53D8  4B BD 5B 49 */	bl func_8009AF20
/* 804C53DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C53E0  7C 08 03 A6 */	mtlr r0
/* 804C53E4  38 21 00 40 */	addi r1, r1, 0x40
/* 804C53E8  4E 80 00 20 */	blr 
