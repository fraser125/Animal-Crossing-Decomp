lbl_8053A0E8:
/* 8053A0E8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8053A0EC  3C A0 81 1D */	lis r5, aNPC_n_actor_cl_tbl@ha /* 0x811D3B28@ha */
/* 8053A0F0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8053A0F4  38 60 00 00 */	li r3, 0
/* 8053A0F8  3C 84 00 02 */	addis r4, r4, 2
/* 8053A0FC  38 00 00 09 */	li r0, 9
/* 8053A100  80 E4 60 4C */	lwz r7, 0x604c(r4)
/* 8053A104  7C 64 1B 78 */	mr r4, r3
/* 8053A108  38 C5 3B 28 */	addi r6, r5, aNPC_n_actor_cl_tbl@l /* 0x811D3B28@l */
/* 8053A10C  39 07 00 1C */	addi r8, r7, 0x1c
/* 8053A110  38 E7 00 40 */	addi r7, r7, 0x40
/* 8053A114  7C 09 03 A6 */	mtctr r0
lbl_8053A118:
/* 8053A118  7C A6 1A 14 */	add r5, r6, r3
/* 8053A11C  38 63 09 D8 */	addi r3, r3, 0x9d8
/* 8053A120  38 05 00 17 */	addi r0, r5, 0x17
/* 8053A124  54 00 00 36 */	rlwinm r0, r0, 0, 0, 0x1b
/* 8053A128  90 08 00 00 */	stw r0, 0(r8)
/* 8053A12C  39 08 00 04 */	addi r8, r8, 4
/* 8053A130  90 87 00 00 */	stw r4, 0(r7)
/* 8053A134  38 E7 00 04 */	addi r7, r7, 4
/* 8053A138  42 00 FF E0 */	bdnz lbl_8053A118
/* 8053A13C  4E 80 00 20 */	blr 
