lbl_80479E3C:
/* 80479E3C  3C 80 80 69 */	lis r4, push_target_d_table@ha /* 0x8068A068@ha */
/* 80479E40  54 60 17 3A */	rlwinm r0, r3, 2, 0x1c, 0x1d
/* 80479E44  38 64 A0 68 */	addi r3, r4, push_target_d_table@l /* 0x8068A068@l */
/* 80479E48  7C 63 00 2E */	lwzx r3, r3, r0
/* 80479E4C  4E 80 00 20 */	blr 
