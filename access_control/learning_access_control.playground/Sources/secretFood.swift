class SecretFood {
    private var secretIngredients: [String] = []
    
    func cookSecretFood(_ secretFood: inout SecretFood) {
        secretFood.secretIngredients = []
        
    }
    
    func readSecretIngredients() {
        print("Secret Ingredients:")
        print(secretIngredients)
    }
}

