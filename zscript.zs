version "4.0"
class ZerkLifestealHandler : EventHandler {
    void HandleZerk(Name power, Actor puncher) {
        if (puncher.CountInv(power) > 0 && e.Thing.Vec3To(puncher).length() <= 128) {
            puncher.GiveBody(1);
        }

    }
    override void WorldThingDamaged(WorldEvent e) {
        if (!e.DamageSource) { return; }
        HandleZerk("PowerStrength",e.DamageSource);
        // NTMAi compat
        HandleZerk("NTM_PowerBerserk",e.DamageSource);
    }
}