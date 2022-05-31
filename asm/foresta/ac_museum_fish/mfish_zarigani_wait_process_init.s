lbl_80456754:
/* 80456754  3C 80 80 45 */	lis r4, mfish_zarigani_wait_process@ha /* 0x80456764@ha */
/* 80456758  38 04 67 64 */	addi r0, r4, mfish_zarigani_wait_process@l /* 0x80456764@l */
/* 8045675C  90 03 00 34 */	stw r0, 0x34(r3)
/* 80456760  4E 80 00 20 */	blr 
