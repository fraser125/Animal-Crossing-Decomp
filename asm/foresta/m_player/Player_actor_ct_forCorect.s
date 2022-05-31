lbl_804D6A28:
/* 804D6A28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D6A2C  7C 08 02 A6 */	mflr r0
/* 804D6A30  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D6A34  39 61 00 20 */	addi r11, r1, 0x20
/* 804D6A38  4B BC 44 95 */	bl func_8009AECC
/* 804D6A3C  7C 7B 1B 78 */	mr r27, r3
/* 804D6A40  7C 9C 23 78 */	mr r28, r4
/* 804D6A44  3B FB 10 10 */	addi r31, r27, 0x1010
/* 804D6A48  7F 83 E3 78 */	mr r3, r28
/* 804D6A4C  3B DB 0F 54 */	addi r30, r27, 0xf54
/* 804D6A50  7F E4 FB 78 */	mr r4, r31
/* 804D6A54  3B BB 0F AC */	addi r29, r27, 0xfac
/* 804D6A58  4B EB DB C1 */	bl ClObjPipe_ct
/* 804D6A5C  3C 80 80 6A */	lis r4, Player_actor_OcInfoData_forStand@ha /* 0x8069E5C0@ha */
/* 804D6A60  7F 83 E3 78 */	mr r3, r28
/* 804D6A64  38 C4 E5 C0 */	addi r6, r4, Player_actor_OcInfoData_forStand@l /* 0x8069E5C0@l */
/* 804D6A68  7F 65 DB 78 */	mr r5, r27
/* 804D6A6C  7F E4 FB 78 */	mr r4, r31
/* 804D6A70  4B EB DC 41 */	bl ClObjPipe_set5
/* 804D6A74  7F 83 E3 78 */	mr r3, r28
/* 804D6A78  7F C4 F3 78 */	mr r4, r30
/* 804D6A7C  4B EB DE BD */	bl ClObjTris_ct
/* 804D6A80  3C 80 80 6A */	lis r4, Player_actor_pclobj_tris_data_forItem@ha /* 0x8069E5F8@ha */
/* 804D6A84  7F 83 E3 78 */	mr r3, r28
/* 804D6A88  38 C4 E5 F8 */	addi r6, r4, Player_actor_pclobj_tris_data_forItem@l /* 0x8069E5F8@l */
/* 804D6A8C  7F 65 DB 78 */	mr r5, r27
/* 804D6A90  7F C4 F3 78 */	mr r4, r30
/* 804D6A94  38 FB 0F 68 */	addi r7, r27, 0xf68
/* 804D6A98  4B EB DF 55 */	bl ClObjTris_set5_nzm
/* 804D6A9C  7F 83 E3 78 */	mr r3, r28
/* 804D6AA0  7F A4 EB 78 */	mr r4, r29
/* 804D6AA4  4B EB DE 95 */	bl ClObjTris_ct
/* 804D6AA8  3C 80 80 6A */	lis r4, Player_actor_pclobj_tris_data_forItem@ha /* 0x8069E5F8@ha */
/* 804D6AAC  7F 83 E3 78 */	mr r3, r28
/* 804D6AB0  38 C4 E5 F8 */	addi r6, r4, Player_actor_pclobj_tris_data_forItem@l /* 0x8069E5F8@l */
/* 804D6AB4  7F 65 DB 78 */	mr r5, r27
/* 804D6AB8  7F A4 EB 78 */	mr r4, r29
/* 804D6ABC  38 FB 0F C0 */	addi r7, r27, 0xfc0
/* 804D6AC0  4B EB DF 2D */	bl ClObjTris_set5_nzm
/* 804D6AC4  39 61 00 20 */	addi r11, r1, 0x20
/* 804D6AC8  4B BC 44 51 */	bl func_8009AF18
/* 804D6ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D6AD0  7C 08 03 A6 */	mtlr r0
/* 804D6AD4  38 21 00 20 */	addi r1, r1, 0x20
/* 804D6AD8  4E 80 00 20 */	blr 
