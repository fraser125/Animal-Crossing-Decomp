lbl_804EEF3C:
/* 804EEF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EEF40  7C 08 02 A6 */	mflr r0
/* 804EEF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EEF48  4B EE A6 F9 */	bl get_player_actor_withoutCheck
/* 804EEF4C  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804EEF50  2C 00 00 0B */	cmpwi r0, 0xb
/* 804EEF54  40 80 00 18 */	bge lbl_804EEF6C
/* 804EEF58  2C 00 00 07 */	cmpwi r0, 7
/* 804EEF5C  40 80 00 08 */	bge lbl_804EEF64
/* 804EEF60  48 00 00 0C */	b lbl_804EEF6C
lbl_804EEF64:
/* 804EEF64  38 60 00 01 */	li r3, 1
/* 804EEF68  48 00 00 08 */	b lbl_804EEF70
lbl_804EEF6C:
/* 804EEF6C  38 60 00 00 */	li r3, 0
lbl_804EEF70:
/* 804EEF70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EEF74  7C 08 03 A6 */	mtlr r0
/* 804EEF78  38 21 00 10 */	addi r1, r1, 0x10
/* 804EEF7C  4E 80 00 20 */	blr 
