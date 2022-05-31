lbl_80526E44:
/* 80526E44  3C A0 80 6A */	lis r5, process@ha /* 0x806A0EA0@ha */
/* 80526E48  90 83 09 98 */	stw r4, 0x998(r3)
/* 80526E4C  54 80 10 3A */	slwi r0, r4, 2
/* 80526E50  38 85 0E A0 */	addi r4, r5, process@l /* 0x806A0EA0@l */
/* 80526E54  7C 04 00 2E */	lwzx r0, r4, r0
/* 80526E58  90 03 09 94 */	stw r0, 0x994(r3)
/* 80526E5C  4E 80 00 20 */	blr 
