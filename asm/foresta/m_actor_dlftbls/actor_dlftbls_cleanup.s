lbl_803760C4:
/* 803760C4  3C 60 81 13 */	lis r3, actor_dlftbls_num@ha /* 0x8112C960@ha */
/* 803760C8  38 00 00 00 */	li r0, 0
/* 803760CC  90 03 C9 60 */	stw r0, actor_dlftbls_num@l(r3)  /* 0x8112C960@l */
/* 803760D0  4E 80 00 20 */	blr 
