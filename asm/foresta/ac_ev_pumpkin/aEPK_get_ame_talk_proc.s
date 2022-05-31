lbl_80522FEC:
/* 80522FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522FF0  7C 08 02 A6 */	mflr r0
/* 80522FF4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80522FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522FFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80523000  7C 7F 1B 78 */	mr r31, r3
/* 80523004  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80523008  3C 63 00 02 */	addis r3, r3, 2
/* 8052300C  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80523010  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80523014  28 00 00 00 */	cmplwi r0, 0
/* 80523018  40 82 00 18 */	bne lbl_80523030
/* 8052301C  4B E9 C6 8D */	bl func_803BF6A8
/* 80523020  4B E9 DD 2D */	bl mMsg_Unset_LockContinue
/* 80523024  7F E3 FB 78 */	mr r3, r31
/* 80523028  38 80 00 0C */	li r4, 0xc
/* 8052302C  48 00 01 B5 */	bl aEPK_change_talk_proc
lbl_80523030:
/* 80523030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80523034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80523038  7C 08 03 A6 */	mtlr r0
/* 8052303C  38 21 00 10 */	addi r1, r1, 0x10
/* 80523040  4E 80 00 20 */	blr 
