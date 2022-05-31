lbl_804ACD0C:
/* 804ACD0C  3C 80 80 4B */	lis r4, aTrainWindow_DrawInTunnel@ha /* 0x804ACD20@ha */
/* 804ACD10  38 04 CD 20 */	addi r0, r4, aTrainWindow_DrawInTunnel@l /* 0x804ACD20@l */
/* 804ACD14  90 03 01 74 */	stw r0, 0x174(r3)
/* 804ACD18  38 60 00 00 */	li r3, 0
/* 804ACD1C  4E 80 00 20 */	blr 
