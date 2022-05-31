lbl_806331B4:
/* 806331B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806331B8  7C 08 02 A6 */	mflr r0
/* 806331BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806331C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806331C4  4B A6 7D 11 */	bl func_8009AED4
/* 806331C8  83 E5 00 00 */	lwz r31, 0(r5)
/* 806331CC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 806331D0  83 A3 08 50 */	lwz r29, 0x850(r3)
/* 806331D4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 806331D8  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 806331DC  38 7E 00 08 */	addi r3, r30, 8
/* 806331E0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806331E4  90 1E 00 00 */	stw r0, 0(r30)
/* 806331E8  80 65 00 00 */	lwz r3, 0(r5)
/* 806331EC  4B DD A1 E9 */	bl _Matrix_to_Mtx_new
/* 806331F0  90 7E 00 04 */	stw r3, 4(r30)
/* 806331F4  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 806331F8  3C A0 80 F5 */	lis r5, int_nog_kamakura_on_model@ha /* 0x80F4D130@ha */
/* 806331FC  3C 80 80 F5 */	lis r4, int_nog_kamakura_onT_model@ha /* 0x80F4D1E0@ha */
/* 80633200  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 80633204  3C 60 80 F5 */	lis r3, int_nog_kamakura_offT_model@ha /* 0x80F4D188@ha */
/* 80633208  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 8063320C  3C C0 DE 00 */	lis r6, 0xde00
/* 80633210  38 08 00 08 */	addi r0, r8, 8
/* 80633214  38 A5 D1 30 */	addi r5, r5, int_nog_kamakura_on_model@l /* 0x80F4D130@l */
/* 80633218  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063321C  38 84 D1 E0 */	addi r4, r4, int_nog_kamakura_onT_model@l /* 0x80F4D1E0@l */
/* 80633220  38 03 D1 88 */	addi r0, r3, int_nog_kamakura_offT_model@l /* 0x80F4D188@l */
/* 80633224  90 E8 00 00 */	stw r7, 0(r8)
/* 80633228  93 A8 00 04 */	stw r29, 4(r8)
/* 8063322C  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 80633230  38 67 00 08 */	addi r3, r7, 8
/* 80633234  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80633238  90 C7 00 00 */	stw r6, 0(r7)
/* 8063323C  90 A7 00 04 */	stw r5, 4(r7)
/* 80633240  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80633244  38 65 00 08 */	addi r3, r5, 8
/* 80633248  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063324C  90 C5 00 00 */	stw r6, 0(r5)
/* 80633250  90 85 00 04 */	stw r4, 4(r5)
/* 80633254  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 80633258  38 64 00 08 */	addi r3, r4, 8
/* 8063325C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80633260  90 C4 00 00 */	stw r6, 0(r4)
/* 80633264  90 04 00 04 */	stw r0, 4(r4)
/* 80633268  39 61 00 20 */	addi r11, r1, 0x20
/* 8063326C  4B A6 7C B5 */	bl func_8009AF20
/* 80633270  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80633274  7C 08 03 A6 */	mtlr r0
/* 80633278  38 21 00 20 */	addi r1, r1, 0x20
/* 8063327C  4E 80 00 20 */	blr 
