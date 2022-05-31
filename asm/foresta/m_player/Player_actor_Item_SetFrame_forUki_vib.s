lbl_804E243C:
/* 804E243C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804E2440  7C 08 02 A6 */	mflr r0
/* 804E2444  90 01 00 54 */	stw r0, 0x54(r1)
/* 804E2448  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804E244C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804E2450  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 804E2454  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 804E2458  39 61 00 30 */	addi r11, r1, 0x30
/* 804E245C  4B BB 8A 79 */	bl func_8009AED4
/* 804E2460  7C 7F 1B 78 */	mr r31, r3
/* 804E2464  80 83 0F 30 */	lwz r4, 0xf30(r3)
/* 804E2468  28 04 00 00 */	cmplwi r4, 0
/* 804E246C  41 82 01 24 */	beq lbl_804E2590
/* 804E2470  C0 1F 0A 28 */	lfs f0, 0xa28(r31)
/* 804E2474  3B DF 10 5C */	addi r30, r31, 0x105c
/* 804E2478  3B A4 00 28 */	addi r29, r4, 0x28
/* 804E247C  38 81 00 10 */	addi r4, r1, 0x10
/* 804E2480  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E2484  4B FF 7E 65 */	bl Player_actor_Get_ItemRodVirtualTopPos
/* 804E2488  7F C3 F3 78 */	mr r3, r30
/* 804E248C  38 81 00 10 */	addi r4, r1, 0x10
/* 804E2490  4B F2 6A 59 */	bl Math3DLengthSquare
/* 804E2494  FF C0 08 90 */	fmr f30, f1
/* 804E2498  7F A3 EB 78 */	mr r3, r29
/* 804E249C  38 81 00 10 */	addi r4, r1, 0x10
/* 804E24A0  4B F2 6A 49 */	bl Math3DLengthSquare
/* 804E24A4  FF E0 08 90 */	fmr f31, f1
/* 804E24A8  7F A3 EB 78 */	mr r3, r29
/* 804E24AC  7F C4 F3 78 */	mr r4, r30
/* 804E24B0  4B F2 6A 39 */	bl Math3DLengthSquare
/* 804E24B4  EC 5E F8 2A */	fadds f2, f30, f31
/* 804E24B8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E24BC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E24C0  EC 42 08 28 */	fsubs f2, f2, f1
/* 804E24C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E24C8  4C 40 13 82 */	cror 2, 0, 2
/* 804E24CC  40 82 00 10 */	bne lbl_804E24DC
/* 804E24D0  3C 60 80 65 */	lis r3, lit_6389@ha /* 0x8064807C@ha */
/* 804E24D4  C0 23 80 7C */	lfs f1, lit_6389@l(r3)  /* 0x8064807C@l */
/* 804E24D8  48 00 00 1C */	b lbl_804E24F4
lbl_804E24DC:
/* 804E24DC  3C 60 80 64 */	lis r3, lit_790@ha /* 0x80646668@ha */
/* 804E24E0  3C 80 80 65 */	lis r4, lit_6389@ha /* 0x8064807C@ha */
/* 804E24E4  C0 03 66 68 */	lfs f0, lit_790@l(r3)  /* 0x80646668@l */
/* 804E24E8  C0 24 80 7C */	lfs f1, lit_6389@l(r4)  /* 0x8064807C@l */
/* 804E24EC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804E24F0  EC 21 00 2A */	fadds f1, f1, f0
lbl_804E24F4:
/* 804E24F4  3C 60 80 65 */	lis r3, lit_6390@ha /* 0x80648084@ha */
/* 804E24F8  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804E24FC  38 A3 80 84 */	addi r5, r3, lit_6390@l /* 0x80648084@l */
/* 804E2500  C8 C4 69 F4 */	lfd f6, lit_1027@l(r4)  /* 0x806469F4@l */
/* 804E2504  C8 E5 00 00 */	lfd f7, 0(r5)
/* 804E2508  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E250C  38 A3 69 FC */	addi r5, r3, lit_1028@l /* 0x806469FC@l */
/* 804E2510  FC 80 38 34 */	frsqrte f4, f7
/* 804E2514  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E2518  38 83 65 64 */	addi r4, r3, lit_603@l /* 0x80646564@l */
/* 804E251C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804E2520  3C 60 80 65 */	lis r3, lit_6391@ha /* 0x8064808C@ha */
/* 804E2524  C0 04 00 00 */	lfs f0, 0(r4)
/* 804E2528  FC 44 01 32 */	fmul f2, f4, f4
/* 804E252C  C0 63 80 8C */	lfs f3, lit_6391@l(r3)  /* 0x8064808C@l */
/* 804E2530  38 61 00 0C */	addi r3, r1, 0xc
/* 804E2534  FC 86 01 32 */	fmul f4, f6, f4
/* 804E2538  FC 47 00 B2 */	fmul f2, f7, f2
/* 804E253C  FC 45 10 28 */	fsub f2, f5, f2
/* 804E2540  FC 84 00 B2 */	fmul f4, f4, f2
/* 804E2544  FC 44 01 32 */	fmul f2, f4, f4
/* 804E2548  FC 86 01 32 */	fmul f4, f6, f4
/* 804E254C  FC 47 00 B2 */	fmul f2, f7, f2
/* 804E2550  FC 45 10 28 */	fsub f2, f5, f2
/* 804E2554  FC 84 00 B2 */	fmul f4, f4, f2
/* 804E2558  FC 44 01 32 */	fmul f2, f4, f4
/* 804E255C  FC 86 01 32 */	fmul f4, f6, f4
/* 804E2560  FC 47 00 B2 */	fmul f2, f7, f2
/* 804E2564  FC 45 10 28 */	fsub f2, f5, f2
/* 804E2568  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E256C  FC 47 00 B2 */	fmul f2, f7, f2
/* 804E2570  FC 40 10 18 */	frsp f2, f2
/* 804E2574  D0 41 00 08 */	stfs f2, 8(r1)
/* 804E2578  C0 41 00 08 */	lfs f2, 8(r1)
/* 804E257C  EC 40 10 28 */	fsubs f2, f0, f2
/* 804E2580  4B ED 8D 15 */	bl add_calc2
/* 804E2584  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E2588  7F E3 FB 78 */	mr r3, r31
/* 804E258C  4B FF E6 AD */	bl Player_actor_Item_SetAnimation_Base
lbl_804E2590:
/* 804E2590  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804E2594  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804E2598  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 804E259C  39 61 00 30 */	addi r11, r1, 0x30
/* 804E25A0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 804E25A4  4B BB 89 7D */	bl func_8009AF20
/* 804E25A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E25AC  7C 08 03 A6 */	mtlr r0
/* 804E25B0  38 21 00 50 */	addi r1, r1, 0x50
/* 804E25B4  4E 80 00 20 */	blr 
