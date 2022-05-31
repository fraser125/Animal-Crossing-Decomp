lbl_804A210C:
/* 804A210C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2110  7C 08 02 A6 */	mflr r0
/* 804A2114  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A211C  7C 9F 23 78 */	mr r31, r4
/* 804A2120  93 C1 00 08 */	stw r30, 8(r1)
/* 804A2124  7C 7E 1B 78 */	mr r30, r3
/* 804A2128  4B EF 62 D1 */	bl mDemo_Get_talk_actor
/* 804A212C  28 03 00 00 */	cmplwi r3, 0
/* 804A2130  40 82 00 58 */	bne lbl_804A2188
/* 804A2134  7F C3 F3 78 */	mr r3, r30
/* 804A2138  7F E4 FB 78 */	mr r4, r31
/* 804A213C  4B FF F7 7D */	bl aSIGN_actor_set_target
/* 804A2140  2C 03 00 00 */	cmpwi r3, 0
/* 804A2144  41 82 00 44 */	beq lbl_804A2188
/* 804A2148  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804A214C  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804A2150  4B EF 3D C1 */	bl chkTrigger
/* 804A2154  2C 03 00 00 */	cmpwi r3, 0
/* 804A2158  41 82 00 30 */	beq lbl_804A2188
/* 804A215C  4B EF 62 9D */	bl mDemo_Get_talk_actor
/* 804A2160  28 03 00 00 */	cmplwi r3, 0
/* 804A2164  40 82 00 24 */	bne lbl_804A2188
/* 804A2168  3C 60 80 4A */	lis r3, aSIGN_set_talk_info@ha /* 0x804A1EE4@ha */
/* 804A216C  7F C4 F3 78 */	mr r4, r30
/* 804A2170  38 A3 1E E4 */	addi r5, r3, aSIGN_set_talk_info@l /* 0x804A1EE4@l */
/* 804A2174  38 60 00 08 */	li r3, 8
/* 804A2178  4B EF 7F E5 */	bl mDemo_Request
/* 804A217C  7F C3 F3 78 */	mr r3, r30
/* 804A2180  38 80 00 01 */	li r4, 1
/* 804A2184  48 00 01 4D */	bl aSIGN_setup_action
lbl_804A2188:
/* 804A2188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A218C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A2190  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A2194  7C 08 03 A6 */	mtlr r0
/* 804A2198  38 21 00 10 */	addi r1, r1, 0x10
/* 804A219C  4E 80 00 20 */	blr 
