lbl_804CEC48:
/* 804CEC48  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CEC4C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 804CEC50  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804CEC54  3C 84 00 02 */	addis r4, r4, 2
/* 804CEC58  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 804CEC5C  80 84 61 1C */	lwz r4, 0x611c(r4)
/* 804CEC60  7C 04 00 00 */	cmpw r4, r0
/* 804CEC64  41 80 00 18 */	blt lbl_804CEC7C
/* 804CEC68  38 03 43 70 */	addi r0, r3, 0x4370
/* 804CEC6C  7C 04 00 00 */	cmpw r4, r0
/* 804CEC70  40 80 00 0C */	bge lbl_804CEC7C
/* 804CEC74  38 60 00 01 */	li r3, 1
/* 804CEC78  4E 80 00 20 */	blr 
lbl_804CEC7C:
/* 804CEC7C  38 60 00 00 */	li r3, 0
/* 804CEC80  4E 80 00 20 */	blr 
