lbl_804DA2E8:
/* 804DA2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA2EC  7C 08 02 A6 */	mflr r0
/* 804DA2F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA2F4  80 03 0F 4C */	lwz r0, 0xf4c(r3)
/* 804DA2F8  2C 00 00 00 */	cmpwi r0, 0
/* 804DA2FC  41 82 00 20 */	beq lbl_804DA31C
/* 804DA300  80 A3 0F 40 */	lwz r5, 0xf40(r3)
/* 804DA304  80 03 0F 44 */	lwz r0, 0xf44(r3)
/* 804DA308  90 A4 00 00 */	stw r5, 0(r4)
/* 804DA30C  90 04 00 04 */	stw r0, 4(r4)
/* 804DA310  80 03 0F 48 */	lwz r0, 0xf48(r3)
/* 804DA314  90 04 00 08 */	stw r0, 8(r4)
/* 804DA318  48 00 00 08 */	b lbl_804DA320
lbl_804DA31C:
/* 804DA31C  4B FF FE D1 */	bl Player_actor_Get_ItemRodTopInitPos
lbl_804DA320:
/* 804DA320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA324  7C 08 03 A6 */	mtlr r0
/* 804DA328  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA32C  4E 80 00 20 */	blr 
