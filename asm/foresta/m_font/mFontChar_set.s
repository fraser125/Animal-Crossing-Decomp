lbl_803B07A8:
/* 803B07A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B07AC  7C 08 02 A6 */	mflr r0
/* 803B07B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B07B4  39 61 00 28 */	addi r11, r1, 0x28
/* 803B07B8  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 803B07BC  4B CE A7 05 */	bl func_8009AEC0
/* 803B07C0  FF E0 08 90 */	fmr f31, f1
/* 803B07C4  7C 99 23 78 */	mr r25, r4
/* 803B07C8  7C 78 1B 78 */	mr r24, r3
/* 803B07CC  7C BA 2B 78 */	mr r26, r5
/* 803B07D0  7C DB 33 78 */	mr r27, r6
/* 803B07D4  7C FC 3B 78 */	mr r28, r7
/* 803B07D8  7D 1D 43 78 */	mr r29, r8
/* 803B07DC  7D 3E 4B 78 */	mr r30, r9
/* 803B07E0  7D 5F 53 78 */	mr r31, r10
/* 803B07E4  38 80 00 40 */	li r4, 0x40
/* 803B07E8  4B CA C8 81 */	bl bzero
/* 803B07EC  93 38 00 00 */	stw r25, 0(r24)
/* 803B07F0  7F E4 FB 78 */	mr r4, r31
/* 803B07F4  38 78 00 34 */	addi r3, r24, 0x34
/* 803B07F8  9B 58 00 04 */	stb r26, 4(r24)
/* 803B07FC  9B 78 00 05 */	stb r27, 5(r24)
/* 803B0800  80 BC 00 00 */	lwz r5, 0(r28)
/* 803B0804  80 1C 00 04 */	lwz r0, 4(r28)
/* 803B0808  90 B8 00 08 */	stw r5, 8(r24)
/* 803B080C  90 18 00 0C */	stw r0, 0xc(r24)
/* 803B0810  80 BD 00 00 */	lwz r5, 0(r29)
/* 803B0814  80 1D 00 04 */	lwz r0, 4(r29)
/* 803B0818  90 B8 00 10 */	stw r5, 0x10(r24)
/* 803B081C  90 18 00 14 */	stw r0, 0x14(r24)
/* 803B0820  80 BE 00 00 */	lwz r5, 0(r30)
/* 803B0824  80 1E 00 04 */	lwz r0, 4(r30)
/* 803B0828  90 B8 00 18 */	stw r5, 0x18(r24)
/* 803B082C  90 18 00 1C */	stw r0, 0x1c(r24)
/* 803B0830  D3 F8 00 30 */	stfs f31, 0x30(r24)
/* 803B0834  48 00 AC F5 */	bl rgba_t_move
/* 803B0838  39 61 00 28 */	addi r11, r1, 0x28
/* 803B083C  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 803B0840  4B CE A6 CD */	bl func_8009AF0C
/* 803B0844  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B0848  7C 08 03 A6 */	mtlr r0
/* 803B084C  38 21 00 30 */	addi r1, r1, 0x30
/* 803B0850  4E 80 00 20 */	blr 
