lbl_804D724C:
/* 804D724C  3C 80 80 64 */	lis r4, Player_actor_wall_angle@ha /* 0x80646A40@ha */
/* 804D7250  38 00 00 04 */	li r0, 4
/* 804D7254  7C 66 07 34 */	extsh r6, r3
/* 804D7258  38 60 00 00 */	li r3, 0
/* 804D725C  38 A4 6A 40 */	addi r5, r4, Player_actor_wall_angle@l /* 0x80646A40@l */
/* 804D7260  38 80 00 00 */	li r4, 0
/* 804D7264  7C 09 03 A6 */	mtctr r0
lbl_804D7268:
/* 804D7268  7C 05 22 AE */	lhax r0, r5, r4
/* 804D726C  7C 06 00 00 */	cmpw r6, r0
/* 804D7270  4D 82 00 20 */	beqlr 
/* 804D7274  38 63 00 01 */	addi r3, r3, 1
/* 804D7278  38 84 00 02 */	addi r4, r4, 2
/* 804D727C  42 00 FF EC */	bdnz lbl_804D7268
/* 804D7280  38 60 00 00 */	li r3, 0
/* 804D7284  4E 80 00 20 */	blr 
