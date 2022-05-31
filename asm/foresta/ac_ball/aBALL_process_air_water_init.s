lbl_80413464:
/* 80413464  38 00 00 00 */	li r0, 0
/* 80413468  3C 80 80 41 */	lis r4, aBALL_process_air_water@ha /* 0x8041347C@ha */
/* 8041346C  98 03 01 08 */	stb r0, 0x108(r3)
/* 80413470  38 04 34 7C */	addi r0, r4, aBALL_process_air_water@l /* 0x8041347C@l */
/* 80413474  90 03 01 E0 */	stw r0, 0x1e0(r3)
/* 80413478  4E 80 00 20 */	blr 
