lbl_804C6C54:
/* 804C6C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6C58  7C 08 02 A6 */	mflr r0
/* 804C6C5C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804C6C60  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804C6C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6C68  3C C5 00 02 */	addis r6, r5, 2
/* 804C6C6C  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 804C6C70  7C 85 23 78 */	mr r5, r4
/* 804C6C74  7C 64 1B 78 */	mr r4, r3
/* 804C6C78  80 66 00 00 */	lwz r3, 0(r6)
/* 804C6C7C  3C 63 00 01 */	addis r3, r3, 1
/* 804C6C80  38 63 37 E4 */	addi r3, r3, 0x37e4
/* 804C6C84  4B FF FF 51 */	bl bIT_actor_ten_coin_entry
/* 804C6C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6C8C  7C 08 03 A6 */	mtlr r0
/* 804C6C90  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6C94  4E 80 00 20 */	blr 
