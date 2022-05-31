lbl_804560F0:
/* 804560F0  3C 80 80 45 */	lis r4, mfish_zarigani_normal_process@ha /* 0x80456100@ha */
/* 804560F4  38 04 61 00 */	addi r0, r4, mfish_zarigani_normal_process@l /* 0x80456100@l */
/* 804560F8  90 03 00 34 */	stw r0, 0x34(r3)
/* 804560FC  4E 80 00 20 */	blr 
