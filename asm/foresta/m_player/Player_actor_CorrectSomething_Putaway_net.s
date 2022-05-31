lbl_804F4930:
/* 804F4930  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F4934  7C 08 02 A6 */	mflr r0
/* 804F4938  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F493C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F4940  4B BA 65 91 */	bl func_8009AED0
/* 804F4944  7C 7C 1B 78 */	mr r28, r3
/* 804F4948  7C 9D 23 78 */	mr r29, r4
/* 804F494C  83 E3 0E 70 */	lwz r31, 0xe70(r3)
/* 804F4950  28 1F 00 00 */	cmplwi r31, 0
/* 804F4954  41 82 00 AC */	beq lbl_804F4A00
/* 804F4958  3C 60 80 65 */	lis r3, lit_8209@ha /* 0x80648438@ha */
/* 804F495C  3B DC 01 74 */	addi r30, r28, 0x174
/* 804F4960  C0 23 84 38 */	lfs f1, lit_8209@l(r3)  /* 0x80648438@l */
/* 804F4964  7F C3 F3 78 */	mr r3, r30
/* 804F4968  4B FE 2C 99 */	bl Player_actor_Check_AnimationFrame
/* 804F496C  2C 03 00 00 */	cmpwi r3, 0
/* 804F4970  41 82 00 38 */	beq lbl_804F49A8
/* 804F4974  88 1C 0E 74 */	lbz r0, 0xe74(r28)
/* 804F4978  7C 00 07 75 */	extsb. r0, r0
/* 804F497C  40 82 00 84 */	bne lbl_804F4A00
/* 804F4980  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804F4984  7F E3 FB 78 */	mr r3, r31
/* 804F4988  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 804F498C  7F A4 EB 78 */	mr r4, r29
/* 804F4990  3C A5 00 02 */	addis r5, r5, 2
/* 804F4994  80 A5 60 88 */	lwz r5, 0x6088(r5)
/* 804F4998  81 85 00 0C */	lwz r12, 0xc(r5)
/* 804F499C  7D 89 03 A6 */	mtctr r12
/* 804F49A0  4E 80 04 21 */	bctrl 
/* 804F49A4  48 00 00 5C */	b lbl_804F4A00
lbl_804F49A8:
/* 804F49A8  3C 60 80 65 */	lis r3, lit_8209@ha /* 0x80648438@ha */
/* 804F49AC  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 804F49B0  C0 03 84 38 */	lfs f0, lit_8209@l(r3)  /* 0x80648438@l */
/* 804F49B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F49B8  40 80 00 48 */	bge lbl_804F4A00
/* 804F49BC  88 1C 0E 74 */	lbz r0, 0xe74(r28)
/* 804F49C0  7C 00 07 75 */	extsb. r0, r0
/* 804F49C4  40 82 00 30 */	bne lbl_804F49F4
/* 804F49C8  3C 60 80 65 */	lis r3, lit_11511@ha /* 0x8064850C@ha */
/* 804F49CC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804F49D0  C0 23 85 0C */	lfs f1, lit_11511@l(r3)  /* 0x8064850C@l */
/* 804F49D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804F49D8  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804F49DC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804F49E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804F49E4  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804F49E8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804F49EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804F49F0  D0 1F 00 64 */	stfs f0, 0x64(r31)
lbl_804F49F4:
/* 804F49F4  7F 83 E3 78 */	mr r3, r28
/* 804F49F8  38 9C 10 5C */	addi r4, r28, 0x105c
/* 804F49FC  4B FE C8 25 */	bl Player_actor_CorrectSomething_net
lbl_804F4A00:
/* 804F4A00  39 61 00 20 */	addi r11, r1, 0x20
/* 804F4A04  4B BA 65 19 */	bl func_8009AF1C
/* 804F4A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F4A0C  7C 08 03 A6 */	mtlr r0
/* 804F4A10  38 21 00 20 */	addi r1, r1, 0x20
/* 804F4A14  4E 80 00 20 */	blr 
