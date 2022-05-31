lbl_804CC1E0:
/* 804CC1E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CC1E4  7C 08 02 A6 */	mflr r0
/* 804CC1E8  38 63 20 0C */	addi r3, r3, 0x200c
/* 804CC1EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CC1F0  7C A0 2B 78 */	mr r0, r5
/* 804CC1F4  38 A1 00 0C */	addi r5, r1, 0xc
/* 804CC1F8  38 C1 00 08 */	addi r6, r1, 8
/* 804CC1FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804CC200  7C 9F 23 78 */	mr r31, r4
/* 804CC204  7C 04 03 78 */	mr r4, r0
/* 804CC208  4B F2 52 39 */	bl func_803F1440
/* 804CC20C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804CC210  7F E3 FB 78 */	mr r3, r31
/* 804CC214  38 81 00 0C */	addi r4, r1, 0xc
/* 804CC218  4B EA 87 95 */	bl Actor_draw_actor_no_culling_check2
/* 804CC21C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CC220  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804CC224  7C 08 03 A6 */	mtlr r0
/* 804CC228  38 21 00 20 */	addi r1, r1, 0x20
/* 804CC22C  4E 80 00 20 */	blr 
